## A-simple-bootloader-in-x86-assembly

After the initial POST (Power-on Self-Test), the BIOS looks for the last two bytes in the MBR (512 bytes) for the _boot signature_. If it is __0x55aa__, the BIOS determines that this is, in deed, the boot sector and proceeds with booting up the machine with the bootstrap code.

<figure class="video_container">
  <video controls="true" allowfullscreen="true" poster="./bootloader.png">
    <source src="./bootloader.mp4" type="video/mp4">
    
  </video>
</figure>

### Courtesy

I am learning about how a bootloader works. I got help from various sources especially https://wiki.osdev.org/Main_Page

### How to Assemble

We need a bunch of numbers. Assuming that we have NASM installed, assemble with `nasm boot_loader.asm -f bin -o boot_loader.bin`

Load with an emulator like Qemu: `qemu-system-i386 boot_loader.bin`


