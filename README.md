# EDK2 Implementation for Xiaomi MI 8
Porting edk2 to Xiaomi MI 8 (dipper)

English | [中文](https://github.com/EngLearnsh/edk2-dipper/blob/master/README_CN.md)

## Status

Successfully running UEFI Shell with internal UFS support. Display works well

Since Mi 8 is my current daily driver, I may update once I have time

## Building

Tested on WSL2 Ubuntu

First, clone EDK2

```
cd ..
git clone https://github.com/tianocore/edk2.git --recursive
git clone https://github.com/tianocore/edk2-platforms.git
```

You should have all three directories side by side

Next, install dependencies:

```
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu
```

Also see [EDK2 website](https://github.com/tianocore/tianocore.github.io/wiki/Using-EDK-II-with-Native-GCC#Install_required_software_from_apt)

Finally, ./build.sh

Then `fastboot boot uefi.img`

# Credits

- Thanks to [tianocore](https://github.com/tianocore) for [EDK2](https://github.com/tianocore/edk2), [EDK2-platforms](https://github.com/tianocore/edk2-platforms) and documents supporting
- Thanks to [Pixel3Dev](https://github.com/Pixel3Dev) and [fxsheep](https://github.com/fxsheep) for great work that had done in [edk2-pixel3](https://github.com/Pixel3Dev/edk2-pixel3) and [edk2-sagit](https://github.com/fxsheep/edk2-sagit)
- Thanks to [imbushuo](https://github.com/imbushuo) for providing `SimpleFbDxe` screen driver which is from [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg)
