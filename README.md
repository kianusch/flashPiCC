# flashPiCC
Tool to flash CC253x via RaspberryPI without a debugger

This tool can be used to flash CC253x boards (and probably others) via RaspberryPI.
A CC-debugger is not neccecary.
WiringPI has to be installed on the PI.

Wiring:

   CC253x .............. PI (wPi)

   RESET (RST) ......... GPIO22 (PIN31)
   DATA/DD (P2.1) ...... GPIO2 (PIN13)
   CLOCK/DC (P2.2) ..... GPIO0 (PIN11)
   
   VCC ................. 3.3V (e.g. PIN1)
   GND ................. 0V/GND (e.g.PIN9) 
   
 If you prefere different PINs on the Raspberry side, this can be changed in the code.
 
 Compiling:
 
 # gcc -o flashPiCC flashPiCC.c -lwiringPi
 
 Flashing:
 
 The firmware to be flashed has to be in hex-format.
 Flashing can be started by:

# ./flashPiCC -f firmware.hex

The CC253x is erased before the firmware is flashed.

Flashing and Verifying:

if -V is passed, the flashing is verified by coparing the written data with the original data.

# ./flashPiCC -V -f firmware.hex

Resetting:

If the CC253x needs to be resetted, this can be done with

# ./flashPiCC -r

Have Fun.
