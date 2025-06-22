# Raspberry Pi baremetal ARM assembly

open cmd in the program folder or navigate to the program folder in cmd
to compile the code and generate the kernel.img file <br>
->``make``

To run the code, put the `kernel.img` in a FAT32 formatted SD card along with `bootcode.bin`, `fixup.dat` & `start.elf`
<br>these files are diffrent (but same name) across Raspbrry pi 1,2,3,4,5. Raspberry pi4/5 do not reqire bootcode.bin

<br>`bootcode.bin` - Initializes the SoC and loads `start.elf`.
<br>`start.elf` -	The main GPU firmware binary. Responsible for booting Linux or your custom `kernel.img`.
<br>`fixup.dat` -	Provides GPU memory split and other configuration data for `start.elf`

Find these files for Raspberry pi 3 in `SD backup` folder.

# requirements
### Windows
Install [Chocolatey package installer](https://chocolatey.org/install) (PowerShell)
<br>
->`Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))`
<br><br>Install make
<br>
->`choco install make`
<br>Install arm-none-eabi-gcc from [here](https://developer.arm.com/downloads/-/gnu-rm)
<br>               OR
<br>
->`choco install gcc-arm-embedded`

### Linux
>`sudo apt-get install gcc-arm-none-eabi`
