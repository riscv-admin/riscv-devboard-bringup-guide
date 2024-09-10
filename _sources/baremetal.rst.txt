BareMetal Application
=====================

This example provides a minimal bare metal demo app that demonstrates how to easily create a bare metal C application
and load it/run it on the riscv soc from  RaspberryPi `RP2350 <https://raspberrypi.com/products/rp2350/>`_.

Here, we will focus on a printing simple string over serial console for simplicity and clarity.

Setting up the environment
--------------------------

Please remember to set up pico-sdk and picotool alongwith and riscv toolchain first.
The sdk and tools for rp2350 are installed in ~/.pico-sdk/ with `VSCode Plugin <https://github.com/raspberrypi/pico-vscode/>`_.
It can also be installed with prebuilt binaries present at `pico-sdk-tools <https://github.com/raspberrypi/pico-sdk-tools/releases/tag/v2.0.0-2>`_.
To use the tools and sdk installed to another location set the following :

.. literalinclude:: scripts/baremetal.sh
   :start-after: # set up env
   :end-before: # /set up env

Getting the sources
-------------------

Clone the baremetal application repository.

.. literalinclude:: scripts/baremetal.sh
   :start-after: # clone
   :end-before: # /clone

Building the baremetal application
----------------------------------

Execute the below commands:

.. literalinclude:: scripts/baremetal.sh
   :start-after: # build
   :end-before: # /build

.. note:: The resulting binaries (``print.uf2``) will be written in the ``build`` folder. Transfer this binary file to the Pico board with a micro USB cable and holding down the BOOTSEL button. 

Running the baremetal application
---------------------------------

To run baremetal application, connect a bi-directional logic level converter set at 3.3V between development machine and Pico with TX, RX and GND.

**RISC-V from RPI** should be seen on ttyUSB serial terminal.

