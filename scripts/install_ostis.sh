#!/bin/bash

PLATFORM_REPO="https://github.com/ostis-dev/ostis-web-platform.git"
PLATFORM_FOLDER="ostis-web-platform"

prepare_platform()
{
	cd scripts
	./prepare.sh
	cd ..
}

prepare_platform_without_build()
{
	cd scripts
	./prepare.sh no_build_kb no_build_sc_machine
	cd ..
}

include_kb()
{
	rm ./ims.ostis.kb/ui/ui_start_sc_element.scs
	rm -rf ./kb/menu
	echo "../kb" >> ./repo.path
	echo "../problem-solver" >> ./repo.path
	cd scripts
	./build_kb.sh
	cd ..
}

include_kpm()
{
	cd sc-machine
	sed -i '\|build/problem-solver/cxx|d' ./CMakeLists.txt
	sed -i '\|build/problem-solver/py|d' ./CMakeLists.txt
	cat ../../scripts/sc_machine_cmake_file_ext.txt >> ./CMakeLists.txt
	
	cd config
	sed -i '/python/d' ./config.ini.in
	sed -i '/modules_path/d' ./config.ini.in 
	echo -e '[python]' >> ./config.ini.in
	echo 'modules_path = ${SC_MACHINE_ROOT}/sc-kpm/sc-python/services;${SC_MACHINE_ROOT}/../../problem-solver/py/services' >> ./config.ini.in
	cd ..
	
	cd ./scripts
	./make_all.sh
	cat ../bin/config.ini >> ../../config/sc-web.ini
	cd ../..
}

cd ..
if [ -d ${PLATFORM_FOLDER} ]; 
	then
		echo -en "Update OSTIS platform\n"
		cd ${PLATFORM_FOLDER}
		git pull
		./../scripts/clone_subsystems.sh
		prepare_platform
	else
		echo -en "Install OSTIS platform\n"
		git clone ${PLATFORM_REPO}
		cd ${PLATFORM_FOLDER}
		git checkout 0.6.0
		./../scripts/clone_subsystems.sh
		prepare_platform_without_build
		include_kpm
		include_kb
fi

