## A-simple-bootloader-in-x86-assembly

After the initial POST (Power-on Self-Test), the BIOS looks for the last two bytes in the MBR (512 bytes) for the _boot signature_. If it is __0x55aa__, the BIOS determines that this is, indeed, the boot sector and proceeds with booting up the machine with the bootstrap code.

Though there is no OS loaded, and therefore no _syscalls_, we can print anything to the screen using _interrupts_ and the _scrolling tele-type BIOS routine_.



https://user-images.githubusercontent.com/25525969/152152887-60239645-20b3-45ef-aa3c-19a555dd34fa.mp4



### Courtesy

I am learning about how a bootloader works. I got help from various sources, especially, https://wiki.osdev.org/Main_Page and https://www.cs.bham.ac.uk/~exr/lectures/opsys/10_11/lectures/os-dev.pdf

### How to Assemble

We need a bunch of numbers. Assuming that we have NASM installed, assemble with `nasm boot_loader.asm -f bin -o boot_loader.bin`

Load with an emulator like Qemu: `qemu-system-i386 boot_loader.bin`


