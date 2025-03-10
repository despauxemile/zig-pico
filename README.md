# zig-pico

got me a pi pico (rp2040)

played a bunch with the C setup but wanted to try to have zig running on there

so i felt like trying to setup a zig build script for cmake to link against my zig code

will probably be moving to microzig tomorrow

## requirements
- builds on zig 0.13.0
- cmake 3.13+
- make i'm guessing?
- [pico-sdk](https://github.com/raspberrypi/pico-sdk) downloaded and variable `$PICO_SDK_PATH` containing its realpath
- arm toolchain: arm-none-eabi-gcc, arm-none-eabi-binutils, arm-none-eabi-newlib (on arch)

### building
```sh
zig build
```
the .uf2 firmware is at `./zig-out/zig-pico.uf2`
