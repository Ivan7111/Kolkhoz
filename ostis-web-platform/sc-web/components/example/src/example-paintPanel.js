Example.PaintPanel = function (containerId) {
	this.containerId = containerId;
};

Example.PaintPanel.prototype = {

    init: function () {
        this._initMarkup(this.containerId);
    },

    _initMarkup: function (containerId) {
        var container = $('#' + containerId);

        var self = this;
        container.append('<div class="sc-no-default-cmd">Agriculture Component</div>');
        //container.append('<button id="newButton" type="button">Образцы</button>');
        //container.append('<button id="DNALaunchButton" type="button">Запуск агента ДНК</button>');
        //container.append('<input id="DNAInput" type="text" maxlength="3" size="4">');
        //container.append('<button id="FieldLaunchButton" type="button">Запуск агента Почвы</button>');
        //container.append('<button id="FarmLaunchButton" type="button">Запуск агента Фермы</button>');
        //container.append('<input id="FarmInput" type="text" size="30">');
        //container.append('<button id="ass" type="button">Тык</button>');
        //container.append('<button id="asscrack" type="button">Антитык</button>');

        container.append('<button id="_soilDropdown" type="button">_soilDropdown</button>');

        container.append(`<h1> ИСС по сельскому хозяйству </h1>

    <img src="https://www.starfate.ru/assets/images/sonnik/pole.jpg" alt="Ридно село, де я лопатаю чирпав гивно"
        width="20%" height="20%">
    <img src="https://o-prirode.ru/wp-content/uploads/2018/10/1600x1000-03.jpg" width="20%" height="20%"
        alt="Ридно село">
    <img src="https://klike.net/uploads/posts/2020-05/1589011491_18.jpg" width="20%" height="20%" alt="Поле">

    <h1> Разделы </h1>

    <details>
        <summary><b> Генетика </b></summary>
        <p> <input type="text" size="40"> <button> Кнопка 123 </button></p>
    </details>

    <details>
        <summary><b> Садоводство </b></summary>
        <p>Кнопки тут</p>
    </details>

    <details>
        <summary><b> Баклажановодство </b></summary>
        <p>Кнопки тут</p>
    </details>

    <details>
        <summary><b> Свинки, хрюшки, хряки, сало </b></summary>
        <p>Кнопки тут</p>
    </details>

    <details>
        <summary><b> Хлебушек </b></summary>
        <p>Кнопки тут</p>
    </details>


    <details>
        <summary><b> Новый супер-агент </b></summary>
        <p>
            <!--<button onclick="window.open("file:///D:/7сем/курсач/weatherAgentWindows.exe 30 20")">-->
            <button
                onclick="new ActiveXObject('WScript.Shell').Run('cmd /c start /max C:\\Windows\\Notepad.exe',0,false);close()">
                Launch notepad
            </button>
        </p>
    </details>

    <div class="futures">
        <div>

            <iframe height="355" width="430"
                src="https://sslcharts.investing.com/index.php?force_lang=1&pair_ID=Chart24EE877C858B43708DE3F778ABB19358&timescale=300&candles=50&style=candles">
                Цена картофеля
            </iframe>
        </div>

    </div>

    <h2>Добавить поле</h2>
    <form name="test" method="post" action="doAction();">
        <p>
            <b>название поля:</b><br>
            <input type="text" id="fieldName" size="40">
        </p>

        <b>Площадь (Га):</b>
        <input type="text" id="fieldArea" size="40">

        <br>

        <b>Широта:</b>
        <input type="text" id="longitude" size="40">
        <b>долгота:</b>
        <input type="text" id="latitude" size="40">


        <div id="map" class="map" height='600' width='1400'></div>
        <script src="https://cdn.jsdelivr.net/gh/openlayers/openlayers.github.io@master/en/v6.9.0/build/ol.js"></script>
        <script type="text/javascript">
            var map = new ol.Map({
                target: 'map',
                layers: [
                    new ol.layer.Tile({
                        source: new ol.source.OSM()
                    })
                ],
                controls: [],
                interactions: [],
                view: new ol.View({
                    center: ol.proj.fromLonLat([28.34, 53.90]),
                    zoom: 7
                })
            });
            map.on('click', function (e) {
                var lonlat = ol.proj.transform(e.coordinate, 'EPSG:3857', 'EPSG:4326');
                //alert(lonlat);
                document.getElementById("longitude").value = lonlat[1];
                document.getElementById("latitude").value = lonlat[0];
            });
        </script>


        <p>
        <div>Выбор почвы</div>
        <select name="languages" id="soilType" class="select-input">
            <option value="песок">песок</option>
            <option value="суглинистая">суглинистая</option>
            <option value="чернозем">чернозем</option>
        </select>
        </p>

        <p>
            <input type="submit" value="Добавить поле в базу">
            <input type="reset" value="Очистить">
        </p>
    </form>

    <hr align="center" width="100%" size="2" color="#ff0000" />
    <br />

    <h2>Оценка периода посадки</h2>
    <form>
        <b>Дата посадки</b>
        <input id="datetime" type="date">
        <br>
        <b>Культура посадки</b>
        <select name="plants" id="plant-id" class="select-input">
            <option value="Картошка">Картошка</option>
            <option value="Рис">Рис</option>
            <option value="Баклажан">Баклажан</option>
            <option value="Лук">Лук</option>
            <option value="Огурец">Огурец</option>
        </select>



        <p><input type="submit" value="Рассчитать пригодность"></p>
    </form>

    <hr align="center" width="100%" size="2" color="#ff0000" />
    <br />


    <h2>Оценка урожайности поля</h2>
    <form>

        <b>Поле</b>
        <select name="fields" id="field-id" class="select-input">
            <option value="Поле1">Поле1</option>
        </select>



        <p><input type="submit" value="Рассчитать урожай"></p>
    </form>

    <hr align="center" width="100%" size="2" color="#ff0000" />
    <br />`);

        $('#asscrack').click(function () {
            //var table = container.getElementById("table_id");
            //table.parentNode.removeChild(table);
        })

        $('#ass').click(function () {
            SCWeb.core.Server.resolveScAddr(['Initer'], function (keynodes) {
                addr = keynodes['Initer'];
                window.sctpClient.create_link().done(function (link) {
                    window.sctpClient.create_arc(sc_type_arc_pos_const_perm, addr, link).done(function () {
                    });
                    setTimeout(() => {
                        window.sctpClient.get_link_content(link).done(function (tableContent) {
                            container.append(tableContent);
                            SCWeb.core.Server.resolveScAddr(['Garbage'], function (keynodes) {
                                addr1 = keynodes['Garbage'];
                                window.sctpClient.create_arc(sc_type_arc_pos_const_perm, addr1, link).done(function () {
                                });
                            });
                        });
                    }, 1000);
                });

                //container.append('<div>Hello</div>');
            });
        })

        $('#newButton').click(function () {
            self._showSamples();
        });

        $('#testButton').click(function () {
            self._testMethod();
        });

        $('#DNALaunchButton').click(function () {
            if (DNAInput.value == '') {
                alert('Введите пареметры!');
                return;
            }
            if (!Number.isInteger(Number(DNAInput.value))) {
                alert('Ввод должен быть целым числом!');
                return;
            }
            SCWeb.core.Server.resolveScAddr(['DNASample'], function (keynodes) {
                for (let i = 0; i < DNAInput.value; i++) {
                    self._launchDNAAgent(DNAInput.value);
                }
                var samples = keynodes['DNASample'];
                SCWeb.core.Server.resolveScAddr(["ui_menu_view_full_semantic_neighborhood"], function (data) {
                    var cmd = data["ui_menu_view_full_semantic_neighborhood"];
                    SCWeb.core.Main.doCommand(cmd,
                        [samples], function (result) {
                            if (result.question != undefined) {
                                SCWeb.ui.WindowManager.appendHistoryItem(result.question);
                            }
                        });
                });
                alert(DNAInput.value + ' oбразца(ов) сгенерировано.');
            });
        });

        $('#FieldLaunchButton').click(function () {
            self._launchFieldAgent();
        });

        $('#FarmLaunchButton').click(function () {
            self._launchFarmAgent();
        });

        $('#_soilDropdown').click(function () {
            self._soilDropdown();
        });
    },

    /* Call agent of searching semantic neighborhood,
    send ui_main_menu node as parameter and add it in web window history
    */

    _soilDropdown: function () {
        console.log("finding soil types.. + Culture");
        var main_menu_addr, nrel_main_idtf_addr;
        // Resolve sc-addrs.
        SCWeb.core.Server.resolveScAddr(['Culture'], function (keynodes) {
            soil_addr = keynodes['Culture'];
            // Resolve sc-addr of ui_menu_view_full_semantic_neighborhood node
            window.sctpClient.iterate_elements(SctpIteratorType.SCTP_ITERATOR_3F_A_A, [
                soil_addr,
                sc_type_arc_pos_const_perm,
                sc_type_node]).
                done(function (identifiers) {
                    console.log("iterator");
                    console.log(identifiers);

                    identifiers.forEach(soilNode => {

                        console.log("have node");
                        console.log(soilNode);
                        console.log(soilNode[2]);

                        window.sctpClient.get_link_content(soilNode[2], 'string').done(function (content) {
                            console.log("try add");
                            console.log(content);

                            var select = document.getElementById("soilType");

                            var option = document.createElement('option');
                            option.text = option.value = content;
                            select.add(option, 0);
                            alert('Soil: ' + content);
                        }
                        )
                    });
                });
        });
    },


    _assTest: function () {

    },

    _launchDNAAgent: function () {
        SCWeb.core.Server.resolveScAddr(['ReadDNAHere'], function (keynodes) {
            addr = keynodes['ReadDNAHere'];
            window.sctpClient.create_node(sc_type_const | sc_type_node | sc_type_node_struct).done(function (node) {
                window.sctpClient.create_arc(sc_type_arc_pos_const_perm, addr, node).done(function () {
                });
            });
        });
    },

    _launchFieldAgent: function () {
        alert('Test success!');
    },

    _launchFarmAgent: function () {
        alert('Test success!');
    },

    _testMethod: function () {
        alert('Test success!');
    },

    _showSamples: function () {
        var addr;
        SCWeb.core.Server.resolveScAddr(['DNASample'], function (keynodes) {
            addr = keynodes['DNASample'];
            SCWeb.core.Server.resolveScAddr(["ui_menu_view_full_semantic_neighborhood"],
                function (data) {
                    var cmd = data["ui_menu_view_full_semantic_neighborhood"];
                    SCWeb.core.Main.doCommand(cmd,
                        [addr], function (result) {
                            if (result.question != undefined) {
                                SCWeb.ui.WindowManager.appendHistoryItem(result.question);
                            }
                        });
                });
        });
    }
};
