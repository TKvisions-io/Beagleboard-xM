all:
	cd ${PWD}/boot/u-boot-2010.12-rc3/ && ${MAKE} distclean
	cd ${PWD}/boot/u-boot-2010.12-rc3/ && ${MAKE} ARCH=arm CROSS_COMPILE=arm-linux- omap3_beagle_config
	cd ${PWD}/boot/u-boot-2010.12-rc3/ && ${MAKE} ARCH=arm CROSS_COMPILE=arm-linux- u-boot.img
		
	cd ${PWD}/kernel/linux-2.6.36.2/ && ${MAKE} ARCH=arm CROSS_COMPILE=arm-linux- omap3_defconfig
	cd ${PWD}/kernel/linux-2.6.36.2/ && ${MAKE} ARCH=arm CROSS_COMPILE=arm-linux- uImage

#	cd ${PWD}/rootfs/buildroot-2010.11/ && ${MAKE} ARCH=arm CROSS_COMPILE=arm-linux- menuconfig
#	cd ${PWD}/rootfs/buildroot-2010.11/ && ${MAKE} ARCH=arm CROSS_COMPILE=arm-linux- 
	
clean:
#	cd ${PWD}/rootfs/buildroot-2010.11/ && ${MAKE} clean
	cd ${PWD}/boot/u-boot-2010.12-rc3/ && ${MAKE} clean
	cd ${PWD}/kernel/linux-2.6.36.2/ && ${MAKE} clean	