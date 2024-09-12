## Marlin Firmware modified for the Biotek Biostack 
This is a modified version of [Marlin](https://github.com/bigtreetech/Marlin) configured for the [BigTreeTech Kraken driver board](https://github.com/bigtreetech/BIGTREETECH-Kraken/blob/master/BIGTREETECH%20Kraken%20V1.0%20User%20Manual.pdf) to run the Biotek Biostack robot in an automated system for high throughput Raman spectroscopy. Full documentation for operating the Biotek Biostack can be accessed [here](https://docs.google.com/document/d/1z7106h6sEGIVGQEQTHt1mG3ihGQOetWLh2Im52hU-tA/edit?pli=1).

## How to Flash Marlin Firmware
To update the board hardware, compile the firmware in your IDE (ex. VSCode). This will create a file called “firmware.bin” in <code>biostack-marlin/.pio/build/STM32H723ZG_btt/</code>

Copy firmware.bin onto the SD card. Insert the SD card into the board. You may need to press the right most button to reboot the firmware. The indicator LED should blink rapidly when the flashware has successfully flashed. You may also verify that the flashware has flashed when firmware.bin is replaced by FIRMWARE.CUR on the SD card.  
<img src="https://github.com/user-attachments/assets/f9f0a3ea-1bfe-4af8-9700-cd6b53ea799a" width="400">

## How to Run Gcode scripts
G-code is a computer numerical control (CNC) language used to automate machinery. It’s fairly simple -- there is an index of [G-code commands](https://marlinfw.org/meta/gcode/) that can take specified axes, positions, speeds, or other values as parameters.

Gcode scripts can be found in (and should be added to) <code>biostack-marlin/Marlin/scripts</code>. 

Move the G-code script onto the SD card, and then plug the SD card into the Kraken board. Make sure the Kraken board is connected to your laptop via the USB port. 

Run the following gcode commands on the serial monitor to run a gcode script: 
1. **M21** 
Initialize SD card
2. **M20**
List gcode files on the SD card
3. **M23 [file name]**
Select file from SD card. Make sure it’s spelled exactly the same as what is displayed after running M20
4. **M24**
Runs gcode script

When testing out a gcode script, keep a close eye for collisions! Slam the emergency stop to cut motor power when/before a collision occurs. 

## Integration with Cam driver board
The Kraken driver board communicates with a separate custom PCB driver board that drives the stacker cams ("cam driver board"), which is necessary because the Biotek Biostack robot has more motors than the number of motor drivers on the Kraken board. Communication happens via I2C. 

Code for the cam driver board microcontroller (Arduino Nano) can be accessed [here](https://github.com/Tadesse-Lab/biostack-cam-driver). 

(TODO: complete this section)

## Integration with Raspberry Pi driver board
(tODO: complete this section)
