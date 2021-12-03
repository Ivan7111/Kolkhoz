import multiprocessing

from keynodes import KeynodeSysIdentifiers, Keynodes
from sctp.logic import SctpClientInstance
from sctp.types import ScAddr, SctpIteratorType, ScElementType
from handlers import api_logic as logic

import rocksdb
import time
import concurrent.futures

from progress.bar import IncrementalBar


class RocksdbReader:
    addr_postfix = "_addrs"
    long_content = None

    def __init__(self):
        self.sys = []
        self.main = []
        self.common = []
        self.addr = []
        self.long_content_counter = 0
        self.content_len_max = 200

    def read_rocksdb(self, rocksdb_fm_path):
        """read db and fill self.sys, self.main and self.common lists by addrs"""
        print("Reading db ...")

        time_start = time.perf_counter()

        opts = rocksdb.Options()
        opts.create_if_missing = False
        opts.compression = rocksdb.CompressionType.snappy_compression
        rdb = rocksdb.DB(rocksdb_fm_path, opts, read_only=True)
        it = rdb.iteritems()
        it.seek_to_first()
        items = list(it)

        for item in items:
            self.form_addr_list(item)

        bar = IncrementalBar("Processing", max=100, suffix='%(percent)d%%')
        index = 0
        progress = int(len(self.addr) // 100)
        optimal_threads_count = 2 * multiprocessing.cpu_count() + 1
        languages = self.get_languages()
        with concurrent.futures.ThreadPoolExecutor(max_workers=optimal_threads_count) as executor:
            future_sort = {executor.submit(self.sorter, languages, addr): addr for addr in self.addr}
            for future in concurrent.futures.as_completed(future_sort):
                try:
                    index += 1
                    if index == progress:
                        bar.next()
                        index = 0
                except Exception as exc:
                    pass

        bar.finish()
        time_end = time.perf_counter()
        time_taken = round(time_end - time_start, 2)
        loaded_elems = len(self.sys) + len(self.main) + len(self.common)
        print(f"{loaded_elems} elems loaded in {time_taken} second(s)")

    def form_addr_list(self, item):
        """fill self.addr list by addrs from db"""
        key = item[0].decode('utf-8')
        if key.endswith(self.addr_postfix):
            val = item[1]
            encoded_addrs = val[8:]
            addrs_count = val[0]
            byte_border = 0
            for _ in range(addrs_count):
                decoded_addr = ScAddr.parse_binary(encoded_addrs[byte_border: byte_border + 4])
                self.addr.append(decoded_addr)
                byte_border += 4

    def get_languages(self):
        try:
            with SctpClientInstance() as sctp_client:
                keys = Keynodes(sctp_client)
                lang_en = keys[KeynodeSysIdentifiers.lang_en]
                lang_ru = keys[KeynodeSysIdentifiers.lang_ru]
                return [lang_en, lang_ru]
        except BrokenPipeError as e:
            quit()

    def sorter(self, languages, node_addr):
        with SctpClientInstance() as sctp_client:
            keys = Keynodes(sctp_client)
            link_content = sctp_client.get_link_content(node_addr)
            if len(link_content) > self.content_len_max:
                self.long_content_counter += 1
                return
            link_content_decoded = link_content.decode('utf-8')
            idtf_addr = logic.get_by_link_addr(keys, sctp_client, node_addr)
            if idtf_addr is not None:
                self.sys.append([idtf_addr.to_int(), link_content_decoded])
                return
            for lang in languages:
                idtf_addr = logic.get_by_link_addr_translated(lang, keys, sctp_client, node_addr)
                if idtf_addr:
                    self.main.append([idtf_addr.to_int(), link_content_decoded])
                else:
                    self.common.append([node_addr.to_int(), link_content_decoded])

    def update():
        # call after changing db
        # should update lists for searching new elems
        pass
