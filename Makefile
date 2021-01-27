#*******************************************************************************
#   Ledger App
#   (c) 2017 Ledger
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#*******************************************************************************

ifeq ($(BOLOS_SDK),)
$(error Environment variable BOLOS_SDK is not set)
endif
include $(BOLOS_SDK)/Makefile.defines

APP_LOAD_PARAMS= --path "44'/12586'" --appFlags 0x240 $(COMMON_LOAD_PARAMS)

GIT_DESCRIBE=$(shell git describe --tags --abbrev=8 --always --long --dirty 2>/dev/null)
VERSION_TAG=$(shell echo $(GIT_DESCRIBE) | sed 's/^v//g')
APPVERSION_M=$(shell echo "${VERSION_TAG}" | cut -f 1 -d .)
APPVERSION_N=$(shell echo "${VERSION_TAG}" | cut -f 2 -d .)
APPVERSION_P=$(shell echo "${VERSION_TAG}" | cut -f 3 -d . | sed 's/^\([0-9]\)[-\.].*/\1/g')
APPVERSION=$(APPVERSION_M).$(APPVERSION_N).$(APPVERSION_P)
APPNAME = "Mina"

DEFINES += $(DEFINES_LIB) $(USER_DEFINES)

ifeq ($(TARGET_NAME),TARGET_NANOX)
	ICONNAME=icons/nanox_app_mina.gif
else
	ICONNAME=icons/nanos_app_mina.gif
endif

################
# Default rule #
################
all: default stop_emulator test

############
# Platform #
############

DEFINES   += LEDGER_BUILD
DEFINES   += OS_IO_SEPROXYHAL
DEFINES   += HAVE_BAGL HAVE_SPRINTF
DEFINES   += HAVE_IO_USB HAVE_L4_USBLIB IO_USB_MAX_ENDPOINTS=6 IO_HID_EP_LENGTH=64 HAVE_USB_APDU
DEFINES   += LEDGER_MAJOR_VERSION=$(APPVERSION_M) LEDGER_MINOR_VERSION=$(APPVERSION_N) LEDGER_PATCH_VERSION=$(APPVERSION_P)

# U2F
DEFINES   += HAVE_U2F HAVE_IO_U2F
DEFINES   += U2F_PROXY_MAGIC=\"BOIL\"
DEFINES   += USB_SEGMENT_SIZE=64
DEFINES   += BLE_SEGMENT_SIZE=32 #max MTU, min 20

WEBUSB_URL     = www.ledgerwallet.com
DEFINES       += HAVE_WEBUSB WEBUSB_URL_SIZE_B=$(shell echo -n $(WEBUSB_URL) | wc -c) WEBUSB_URL=$(shell echo -n $(WEBUSB_URL) | sed -e "s/./\\\'\0\\\',/g")

DEFINES   += UNUSED\(x\)=\(void\)x
DEFINES   += APPVERSION=\"$(APPVERSION)\"


ifeq ($(TARGET_NAME),TARGET_NANOX)
DEFINES   	  += IO_SEPROXYHAL_BUFFER_SIZE_B=300
DEFINES       += HAVE_BLE BLE_COMMAND_TIMEOUT_MS=2000
DEFINES       += HAVE_BLE_APDU # basic ledger apdu transport over BLE

DEFINES       += HAVE_GLO096
DEFINES       += HAVE_BAGL BAGL_WIDTH=128 BAGL_HEIGHT=64
DEFINES       += HAVE_BAGL_ELLIPSIS # long label truncation feature
DEFINES       += HAVE_BAGL_FONT_OPEN_SANS_REGULAR_11PX
DEFINES       += HAVE_BAGL_FONT_OPEN_SANS_EXTRABOLD_11PX
DEFINES       += HAVE_BAGL_FONT_OPEN_SANS_LIGHT_16PX
else
DEFINES   	  += IO_SEPROXYHAL_BUFFER_SIZE_B=128
endif

# Both nano S and X benefit from the flow.
DEFINES       += HAVE_UX_FLOW

# Enabling debug PRINTF
DEBUG = 0
ifneq ($(DEBUG),0)

        ifeq ($(TARGET_NAME),TARGET_NANOX)
                DEFINES   += HAVE_PRINTF PRINTF=mcu_usb_printf
        else
                DEFINES   += HAVE_PRINTF PRINTF=screen_printf
        endif
else
        DEFINES   += PRINTF\(...\)=
endif

##############
#  Compiler  #
##############
ifneq ($(BOLOS_ENV),)
$(info BOLOS_ENV=$(BOLOS_ENV))
CLANGPATH := $(BOLOS_ENV)/clang-arm-fropi/bin/
GCCPATH := $(BOLOS_ENV)/gcc-arm-none-eabi-5_3-2016q1/bin/
else
$(info BOLOS_ENV is not set: falling back to CLANGPATH and GCCPATH)
endif
ifeq ($(CLANGPATH),)
$(info CLANGPATH is not set: clang will be used from PATH)
endif
ifeq ($(GCCPATH),)
$(info GCCPATH is not set: arm-none-eabi-* will be used from PATH)
endif

CC       := $(CLANGPATH)clang

CFLAGS   += -O3 -Os

AS     := $(GCCPATH)arm-none-eabi-gcc

LD       := $(GCCPATH)arm-none-eabi-gcc
LDFLAGS  += -O3 -Os
LDLIBS   += -lm -lgcc -lc

# import rules to compile glyphs(/pone)
include $(BOLOS_SDK)/Makefile.glyphs

### variables processed by the common makefile.rules of the SDK to grab source files and include dirs
APP_SOURCE_PATH  += src
SDK_SOURCE_PATH  += lib_stusb lib_stusb_impl lib_u2f

ifeq ($(TARGET_NAME),TARGET_NANOX)
SDK_SOURCE_PATH  += lib_blewbxx lib_blewbxx_impl
SDK_SOURCE_PATH  += lib_ux
endif

APP_LOAD_PARAMS_EVALUATED=$(shell printf '\\"%s\\" ' $(APP_LOAD_PARAMS))
APP_DELETE_PARAMS_EVALUATED=$(shell printf '\\"%s\\" ' $(COMMON_DELETE_PARAMS))

load: all
	python -m ledgerblue.loadApp $(APP_LOAD_PARAMS)

load-offline: all
	python -m ledgerblue.loadApp $(APP_LOAD_PARAMS) --offline

delete:
	python -m ledgerblue.deleteApp $(COMMON_DELETE_PARAMS)

dev-env/speculos/build/src/launcher: dev-env/speculos
ifeq ("$(NO_EMULATOR)","")
	cd $<; cmake -Bbuild -H.
	$(MAKE) -C $</build
endif

ifneq (,$(wildcard emulator.pid))
EMULATOR_PID=`cat ./emulator.pid`
endif
stop_emulator:
ifneq (,$(wildcard emulator.pid))
	@echo "Stopping emulator with PID $(EMULATOR_PID)"
	@kill $(EMULATOR_PID) >/dev/null 2>&1 || true
	rm -f ./emulator.pid
endif

test:
	$(MAKE) -C tests

TEST_MNEMONIC=course grief vintage slim tell hospital car maze model style \
              elegant kitchen state purpose matrix gas grid enable frown road \
              goddess glove canyon key

ifeq ("$(NO_EMULATOR)","")
ifeq (,$(wildcard ./dev-env/speculos/CMakeLists.txt))
$(error Submodules missing: use 'git submodule update --init --recursive' or set NO_EMULATOR=1.)
endif
endif

ifneq ("$(AUTOMATION)","")
EMULATOR_AUTOMATION=--automation file:./emulator_automation.json
else
EMULATOR_AUTOMATION=
endif

run: all dev-env/speculos/build/src/launcher
	@if [ -z $(NO_EMULATOR) ]; then \
	    echo "Running emulator" ; \
	    ./dev-env/speculos/speculos.py --ontop $(EMULATOR_AUTOMATION) \
	                       -s "$(TEST_MNEMONIC)" \
	                       ./bin/app.elf > emulator.log 2>&1 & \
	    echo $$! > emulator.pid ; \
	else \
	echo "Error: cannot run emulator with NO_EMULATOR environmental variable set"; \
	    exit 1; \
	fi

define RELEASE_README
ledger-app-mina-$(VERSION_TAG)

Contents
    ./install.sh         - Load app onto Ledger device
    ./uninstall.sh       - Delete app from Ledger device
    ./mina_ledger_wallet - Command-line wallet

For more details visit https://github.com/jspada/ledger-app-mina
endef
export RELEASE_README

define RELEASE_DEPS
if ! which python3 > /dev/null 2>&1 ; then
    echo "Error: Please install python3"
	exit 211;
fi
if ! which pip3 > /dev/null 2>&1 ; then
    echo "Error: Please install pip3"
	exit
fi
if ! pip3 -q show ledgerblue ; then
    echo "Error: please pip3 install ledgerblue"
	exit
fi
read -p "Please unlock your Ledger device and exit any apps (press any key to continue) " unused
endef
export RELEASE_DEPS

release: clean all
	@echo "Packaging release... ledger-app-mina-$(VERSION_TAG).tar.gz"

	@echo "$$RELEASE_README" > README.txt

	@echo "$$RELEASE_DEPS" > install.sh
	@echo "python3 -m ledgerblue.loadApp $(APP_LOAD_PARAMS_EVALUATED)" >> install.sh
	@chmod +x install.sh

	@echo "$$RELEASE_DEPS" > uninstall.sh
	@echo "python3 -m ledgerblue.deleteApp $(APP_DELETE_PARAMS_EVALUATED)" > uninstall.sh
	@chmod +x uninstall.sh

	@cp utils/mina_ledger_wallet.py mina_ledger_wallet
	@sed -i 's/__version__ = "1.0.0"/__version__ = "$(VERSION_TAG)"/' mina_ledger_wallet
	@tar -zcf ledger-app-mina-$(VERSION_TAG).tar.gz \
	        --transform "s,^,ledger-app-mina-$(VERSION_TAG)/," \
	        README.txt \
	        install.sh \
	        uninstall.sh \
	        mina_ledger_wallet \
	        bin/app.hex

	@rm -f README.txt
	@rm -f install.sh
	@rm -f uninstall.sh
	@rm -f mina_ledger_wallet

# import generic rules from the sdk
include $(BOLOS_SDK)/Makefile.rules

#add dependency on custom makefile filename
dep/%.d: %.c Makefile

allclean: clean
	$(MAKE) --directory=tests clean
	rm -rf dev-env/speculos/build

listvariants:
	@echo VARIANTS COIN mina
