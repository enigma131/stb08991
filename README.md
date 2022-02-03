# stb08991

This module source will create a replacement Linux kernel demodulator module with enhanced capabilities (performance for low C/N signal, restore signal monitoring ...). This module is part of my TechnoTrend TT-budget S2-3200 PCI card and also in other [devices](https://www.linuxtv.org/wiki/index.php/STMicroelectronics_STB0899) .This repo is a simplified version of [stb0899](https://github.com/enigma131/stb0899)

Total changes from Linux sources are in separate file [ListOfChanges](ListOfChanges). 

I use it since kernel 4.x on different distribution familys (Ubuntu, Debian, Arch ,Fedora, Redhat).

## Installing:

To compile the driver, you need to have make, compiler and kernel headers installed. This module is based on kernel module replacing and is linked to others media sources of kernel, so you need first to [install](KernelInstall.md) closest kernel source for your distribtion.

Next, get the repository to local:

    git clone https://github.com/enigma131/stb08991.git

If different kernel, you have to adjust the right path for KERNSRC and KERNELSOURCE in Makefile:

    nano stb08991/Makefile 

If changes made, save the file then exit nano.

Initialize the DKMS structure:

    sudo dkms add ./stb08991

This simplified repo diden't touch stb0899_algo.c, so make a link in /usr/src/stb0899-enigma13 to Kernel one for Dkms compilation.

    sudo ln -s /usr/src/linux-5.10/drivers/media/dvb-frontends/stb0899_algo.c /usr/src/stb0899-enigma13

Compile source / Install DKMS:

    sudo dkms install stb0899/enigma13

Verify result :

    sudo dkms status

    sudo modinfo stb0899

Reboot and test
