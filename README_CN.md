# 为小米8实现EDK2
给小米8（dipper）移植EDK2

[English](https://github.com/EngLearnsh/edk2-dipper/blob/master/README.md) | 中文

## 状态

成功运行UEFI Shell并支持内部UFS。显示屏正常工作

由于米8是我目前的主力机，闲暇之余我可能会更新它

## 构造

在WSL2 Ubuntu上进行测试

首先，克隆EDK2

```
cd ..
git clone https://github.com/tianocore/edk2.git --recursive
git clone https://github.com/tianocore/edk2-platforms.git
```

三个目录需并排放在同个文件夹下

接下来，安装依赖包:

```
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu
```

同时访问 [EDK2 website](https://github.com/tianocore/tianocore.github.io/wiki/Using-EDK-II-with-Native-GCC#Install_required_software_from_apt)

最后, ./build.sh

然后 `fastboot boot uefi.img`

# 鸣谢

- 感谢 [tianocore](https://github.com/tianocore) 的 [EDK2](https://github.com/tianocore/edk2), [EDK2-platforms](https://github.com/tianocore/edk2-platforms) 和文档支持
- 感谢 [Pixel3Dev](https://github.com/Pixel3Dev) 和 [fxsheep](https://github.com/fxsheep) 在 [edk2-pixel3](https://github.com/Pixel3Dev/edk2-pixel3) 和 [edk2-sagit](https://github.com/fxsheep/edk2-sagit) 所完成的工作
- 感谢 [imbushuo](https://github.com/imbushuo) 提供来自 [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg） 的 `SimpleFbDxe` 屏幕驱动
