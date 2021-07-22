# Makefile utility for PlayOS

buildroot:
	cd bsp/buildroot-rpi4;BR2_EXTERNAL=../buildroot-external-microchip/ make playos_defconfig;make

buildroot-clean:
	cd bsp/buildroot-rpi4; make clean

buildroot-rebuild: buildroot-clean buildroot

