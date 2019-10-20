# Lenovo-Rescuer-14isk-15isk-Haswell-OS-X-Clover-Hotpatch
让你的拯救者 14-isk&15-isk Haswell笔记本吃上黑苹果（注意此为4代U版，与6代U版不一样）

[English](README-EN.md) | [中文](README.md)

* | Computer:Lenovo Rescuer 14-isk / Rescuer 15-isk Laptop
* | CPU :Intel Core i5- 4210HQ /Intel Core i7-4720HQ  (Haswell  )
* | Graphics :HD4600 (using Intel GPU only) 独显已屏蔽
* | Audio:ACL235 @ Intel Lynx Point High Definition Audio
* | Ethernet: RTL8168/8111/8112 Gigabit Ethernet Controller
* | WiFi: (原装无解，更换) 
* | Bluetooth: (原装无解，更换)          
* | BIOS Version:最新版

## 支持列表

* 支持macOS Catalina 10.15& macOS Mojave 10.14
* ACPI补丁修复使用hotpatch方式，相关文件位于 `/CLOVER/ACPI/patched` 。
* 远景论坛ID：39军小兵张 [Link](http://i.pcbeta.com/space-uid-4472739.html)
* 安装视频教程及效果展示：[Link](https://space.bilibili.com/414418614/video) 

## 发布

最后发布的版本前往 [release page](https://github.com/Z39/Lenovo-Rescuer-14isk-15isk-Haswell-OS-X-Clover-Hotpatch/releases) 下载即可。
如果Github网络下载不太好，新增[蓝奏云](https://www.lanzous.com/b616223)  密码：8shm

## 关于打赏

如果您认可我的工作，请通过打赏支持我后续的更新。

|                                 微信                                           |                         支付宝                                       |
| ---------------------------------------------------------- | ---------------------------------------------------- |
| ![微信打赏](微信打赏.png)                                         | ![支付宝打赏](支付宝打赏.png)                           |

## 黑苹果相关情况
- [x] 显卡 核显HD4600驱动 QE/CI AGPM
- [x]  USB 3.0 USB端口定制 
- [x]  亮度调节 FN+上下箭头调节
- [x]  声卡 AppleALC驱动，目前i注入layout 14,ALC235这个声卡还有点问题
- [x]  CPU变频  
- [x]  电源电池睡眠唤醒（电源管理LPC ok，开合盖唤醒/睡眠，关机重启正常断电）目前电池未修正
- [x]  键盘 附件默认使用ApplePS2SmartTouchPad，兼容Synaptics和Elan。
- [x]  触控板 好像也是与电池问题连一起
- [x] 有线网卡
- [x]  无线网卡 自带无解需要更换
- [x]  蓝牙 需要更换
- [x]  摄像头
- [x]  App Store/iCloud/iMessage/Facetime
- [x]  SIP 关闭SIP
- [x]  TRIM 固态默认开启
- [x]  无痛更新升级 支持在线升级
- [x]  读卡器
- [x] 外接显示器 HDMI视频/声音输出,VGA不支持
- [x]  自带独显屏蔽，

### 存在问题
* 1.电池目前未能修正，电池信息有点多且复杂，电池修正水平不太够啊。 2.触控板，拯救者的机子，4代跟6代的差不多，触控板与电池好像是一起的问题。3.声卡ALC235，又是妖卡。
总结：拯救者的机子多妖机，无实机，后期更新看情况吧。
## kexts等更新链接

- Clover EFI bootloader [Link](https://github.com/Dids/clover-builder/releases)

- FakeSMC [Link](https://bitbucket.org/RehabMan/os-x-fakesmc-kozlek/downloads/)

- VoodooPS2Controller [Link](https://bitbucket.org/RehabMan/os-x-acpi-battery-driver/)

- ACPIBatteryManager [Link](https://bitbucket.org/RehabMan/os-x-acpi-battery-driver/)

- BrcmPatchRAM [Link](https://bitbucket.org/RehabMan/os-x-brcmpatchram/downloads/)

- Lilu [Link](https://github.com/acidanthera/Lilu)

- AirportBrcmFixup [Link](https://github.com/acidanthera/AirportBrcmFixup)

- WhateverGreen [Link](https://github.com/acidanthera/WhateverGreen)

- AppleALC [Link](https://github.com/acidanthera/AppleALC)

- AtherosE2200Ethernet [Link](https://github.com/Mieze/AtherosE2200Ethernet)

- Enable macOS HiDPI [Link](https://github.com/xzhih/one-key-hidpi)


