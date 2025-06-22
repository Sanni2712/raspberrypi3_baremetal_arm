#Raspberry Pi baremetal ARM assembly

open cmd in the program folder or navigate to the program folder in cmd
to compile the code and generate the .img file type <br>
->``make``

To run the code, put the `kernel.img` in a FAT32 formatted SD card along with `bootcode.bin`, `fixup.dat` & `start.elf`
<br>these files are diffrent (but same name) across Raspbrry pi 1,2,3,4,5. Raspberry pi4/5 do not reqire bootcode.bin

<br>`bootcode.bin` - Initializes the SoC and loads `start.elf`.
<br>`start.elf` -	The main GPU firmware binary. Responsible for booting Linux or your custom `kernel.img`.
<br>`fixup.dat` -	Provides GPU memory split and other configuration data for `start.elf`

Find these files for Raspberry pi 3 in `SD backup` folder.
