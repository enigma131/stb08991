stb0899-objs := stb0899_drv.o stb0899_algo.o
# obj-m += stb0899_drv.o
# obj-m += stb0899_algo.o
obj-m += stb0899.o
KERNSRC="/usr/src/linux-5.10/include/media"
EXTRA_CFLAGS += -I${KERNSRC}
KERNELSOURCE="/usr/src/linux-5.10/drivers/media"
EXTRA_CFLAGS += -I${KERNELSOURCE}/usb/dvb-usb
EXTRA_CFLAGS += -I${KERNELSOURCE}/dvb-frontends
EXTRA_CFLAGS += -I${KERNELSOURCE}/tuners
EXTRA_CFLAGS += -I${KERNELSOURCE}/dvb-core
