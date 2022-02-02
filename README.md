# stb08991

This module source will create a new Linux kernel demodulator module with enhanced capabilities (performance for low C/N signal, restore signal monitoring ...). This module is part of my TechnoTrend TT-budget S2-3200 PCI card and also in other [devices](https://www.linuxtv.org/wiki/index.php/STMicroelectronics_STB0899)

Total changes from Linux sources are in separate file [ListOfChanges](ListOfChanges). 

I use it since kernel 4.x on different distribution familys (Ubuntu, Debian, Arch ,Fedora, Redhat).

Get the repository to local:

    git clone https://github.com/enigma131/stb08991.git

If different kernel, you have to adjust the right path for KERNSRC and KERNELSOURCE in Makefile:

    nano stb08991/Makefile 

If changes made, save the file then exit nano.

Initialize the DKMS structure:

    sudo dkms add ./stb08991

Add lnk for stb0899_algo.c in /usr/src/stb0899-enigma13. Compile source / Install DKMS:

    sudo dkms install stb0899/enigma13

Verify result :

    sudo dkms status

    sudo modinfo stb0899

Reboot and test
