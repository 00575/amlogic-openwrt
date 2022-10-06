# OpenWrt for Amlogic TV Boxes / 晶晨 OpenWrt

[OpenWrt](https://openwrt.org/) 项目是一个针对嵌入式设备的 Linux 路由器操作系统。OpenWrt 不是一个单一且不可更改的固件，而是提供了具有软件包管理功能的完全可写的文件系统，让您可以自由选择需要的软件包来定制路由器系统。对于开发人员来说，OpenWrt 是一个无需围绕它构建完整固件就能开发应用程序的框架；对于普通用户来说，这意味着拥有了完全定制的能力，能以意想不到的方式使用该设备。它拥有超过 3000+ 个标准化应用软件包和非常丰富的第三方插件支持，让您可以轻松地将他们应用于各种支持的设备。

现在你可以将使用 Amlogic 芯片的电视盒子的安卓 TV 系统更换为 OpenWrt 系统，让他成为一台功能强大的路由器。本项目支持 github.com 一站式完整编译（从自定义软件包进行编译，到打包固件，完全在 github.com 一站式完成）；支持本地化打包（在本地Ubuntu等环境中进行固件打包）。支持的Amlogic S9xxx系列型号有 ***`a311d, s922x, s905x3, s905x2, s905l3a, s912, s905d, s905x, s905w, s905`*** 等，例如 ***`Belink GT-King, Belink GT-King Pro, UGOOS AM6 Plus, X96-Max+, HK1-Box, H96-Max-X3, Phicomm-N1, Octopus-Planet, Fiberhome HG680P, ZTE B860H`*** 等电视盒子。


## OpenWrt 固件说明

| 芯片  | 设备 | [可选内核](https://github.com/ophub/kernel/tree/main/pub/stable) | OpenWrt 固件 |
| ---- | ---- | ---- | ---- |
| a311d | [Khadas-VIM3](https://www.gearbest.com/boards---shields/pp_3008145189226460.html) | 全部 | openwrt_a311d_k*.img |
| s922x | [Beelink-GT-King](https://tokopedia.link/RAgZmOM41db), [Beelink-GT-King-Pro](https://www.gearbest.com/tv-box/pp_3008857542462482.html), [Ugoos-AM6-Plus](https://www.gearbest.com/tv-box/pp_3002820788090799.html), [ODROID-N2](https://www.hardkernel.com/shop/odroid-n2-with-4gbyte-ram-2/) | 全部 | openwrt_s922x_k*.img |
| s905x3 | [X96-Max+](https://www.gearbest.com/tv-box/pp_3001768790621051.html), [HK1-Box](https://tokopedia.link/xhWeQgTuwfb), [H96-Max-X3](https://tokopedia.link/KuWvwoYuwfb), [Ugoos-X3](https://tokopedia.link/duoIXZpdGgb), [TX3](https://www.aliexpress.com/item/1005003772717802.html), [X96-Air](https://www.gearbest.com/tv-box/pp_3002885621272175.html), [A95XF3-Air](https://tokopedia.link/ByBL45jdGgb), [Tencent-Aurora-3Pro](https://item.jd.com/100009131339.html) | 全部 | openwrt_s905x3_k*.img |
| s905x2 | [X96Max-4G](https://www.ebay.com/itm/164895650425), [X96Max-2G](https://www.alibaba.com/product-detail/Amlogic-S905X2-Android-TV-Box-X96_62210191636.html), [MECOOL-KM3-4G](https://www.gearbest.com/tv-box/pp_3008133484979616.html) | 全部 | openwrt_s905x2_k*.img |
| s912 | [Tanix-TX8-Max](https://www.tanix-box.com/project-view/tanix-tx8-max-android-tv-box/), [Tanix-TX9-Pro](https://www.gearbest.com/tv-box/pp_759339.html), [Tanix-TX92](http://www.tanix-box.com/project-view/tanix-tx92-android-tv-box-powered-amlogic-s912/), [Nexbox-A1](https://www.gearbest.com/tv-box-mini-pc/pp_424843.html), [Nexbox-A95X-A2](https://www.cafago.com/en/p-v2979eu-2g.html),  [A95X](https://tokopedia.link/zQVlmUfgqqb), [H96-Pro-Plus](https://www.gearbest.com/tv-box-mini-pc/pp_503486.html), [VORKE-Z6-Plus](http://www.vorke.com/project/vorke-z6-2/), [Mecool-M8S-PRO-L](https://www.gearbest.com/tv-box/pp_3005746210753315.html), [Vontar-X92](https://nl.aliexpress.com/i/32734559342.html), [T95Z-Plus](https://www.ebay.com/itm/253466003975), [Octopus-Planet](https://post.smzdm.com/p/a07oer59/) | 全部 | openwrt_s912_k*.img |
| s905d | [MECOOL-KI-Pro](https://www.gearbest.com/tv-box-mini-pc/pp_629409.html), [Phicomm-N1](https://www.cnx-software.com/2019/03/11/phicomm-n1-tv-box-linux-distributions/) | 全部 | openwrt_s905d_k*.img |
| s905x | [HG680P](https://tokopedia.link/HbrIbqQcGgb), [B860H](https://www.zte.com.cn/global/products/cocloud/201707261551/IP-STB/ZXV10-B860H), [TBee-Box](https://www.tbee.com/product/tbee-box/) | 全部 | openwrt_s905x_k*.img |
| s905w | [X96-Mini](https://www.gearbest.com/tv-box/pp_3008306149708795.html), [TX3-Mini](https://www.gearbest.com/tv-box/pp_009748238474.html), [W95](https://www.gearbest.com/tv-box/pp_736121.html) | 5.4.y/5.15.y | openwrt_s905w_k*.img |
| s905 | [Beelink-Mini-MX-2G](https://www.gearbest.com/tv-box-mini-pc/pp_321409.html), [MXQ-PRO+4K](https://www.gearbest.com/tv-box-mini-pc/pp_354313.html) | 全部 | openwrt_s905_k*.img |
| s905l3a | [E900V22C/D](https://github.com/Calmact/e900v22c), [CM311-1a-YST](https://www.znds.com/tv-1216697-1-1.html), [M401A](https://blog.csdn.net/fatiaozhang9527/article/details/124157038), [M411A](https://blog.csdn.net/fatiaozhang9527/article/details/126388479), [UNT403A](https://blog.csdn.net/wjf149575296/article/details/123947681), [UNT413A](https://blog.csdn.net/fatiaozhang9527/article/details/122232733) | 全部 | openwrt_s905l3a_k*.img |

💡提示：当前 ***`s905w`*** 系列的盒子只支持使用 `5.4.y/5.15.y` 内核，其他型号的盒子可任选内核版本使用。当前 ***`s905`*** 的盒子只能在 `TF/SD/USB` 中使用，其他型号的盒子同时支持写入 `EMMC` 中使用。每个盒子的 dtb 和 u-boot 请查阅[说明](https://github.com/ophub/amlogic-s9xxx-armbian/blob/main/build-armbian/armbian-docs/amlogic_model_database.md)。

## 安装及升级 OpenWrt 的相关说明

选择和你的电视盒子型号对应的 OpenWrt 固件，使用 [Rufus](https://rufus.ie/) 或者 [balenaEtcher](https://www.balena.io/etcher/) 等工具将固件写入USB里，然后把写好固件的USB插入电视盒子。

- ### 安装 OpenWrt

从浏览器访问 OpenWrt 的默认 IP: 192.168.1.1 → `使用默认账户登录进入 OpenWrt` → `系统菜单` → `晶晨宝盒` → `安装 OpenWrt` ，在支持的设备下拉列表中选择你的盒子，点击 `安装 OpenWrt` 按钮进行安装。

- ### 升级 OpenWrt

从浏览器访问 OpenWrt 的 IP 如: 192.168.1.1 →  `使用账户登录进入 OpenWrt` → `系统菜单` → `晶晨宝盒` → `手动上传更新 / 在线下载更新`

如果选择 `手动上传更新` [OpenWrt 固件](https://github.com/ophub/amlogic-s9xxx-openwrt/releases)，可以将编译好 OpenWrt 固件压缩包，如 openwrt_s9xxx_k5.15.50_xxx.img.gz 进行上传（推荐上传压缩包，系统会自动解压。如果上传解压缩后的 xxx.img 格式的文件，可能会因为文件太大而上传失败），上传完成后界面将显示 `更新固件` 的操作按钮，点击即可更新。

如果选择 `手动上传更新` [OpenWrt 内核](https://github.com/ophub/kernel/tree/main/pub/stable)，可以将 `boot-xxx.tar.gz`, `dtb-amlogic-xxx.tar.gz`, `modules-xxx.tar.gz` 这 3 个内核文件上传（其他内核文件不需要，如果同时上传也不影响更新，系统可以准确识别需要的内核文件），上传完成后界面将显示 `更新内核` 的操作按钮，点击即可更新。

如果选择 `在线下载更新` OpenWrt 固件或内核，将根据`插件设置`中的`固件下载地址`和`内核下载地址`进行下载，你可以自定义修改下载来源，具体操作方法详见 [luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) 的编译与使用说明。

提示：安装/升级等功能由 [luci-app-amlogic](https://github.com/ophub/luci-app-amlogic) 提供可视化操作支持。也支持[命令操作](https://github.com/ophub/amlogic-s9xxx-openwrt/blob/main/router-config/README.cn.md#8-安装固件)。

- ### 在 TF/SD/USB 中使用 OpenWrt

从浏览器访问 OpenWrt 的默认 IP: 192.168.1.1 → `使用默认账户登录进入 OpenWrt` → `系统菜单` → `TTYD 终端` → 输入命令

```yaml
openwrt-tf
```

激活剩余空间后，支持在 TF/SD/USB 中升级内核和 OpenWrt 系统。

- ### 为 OpenWrt 创建 swap

如果你在使用 `docker` 等内存占用较大的应用时，觉得当前盒子的内存不够使用，可以创建 `swap` 虚拟内存分区，将 `/mnt/*4` 磁盘空间的一定容量虚拟成内存来使用。下面命令输入参数的单位是 `GB`，默认为 `1`。

从浏览器访问 OpenWrt 的默认 IP: 192.168.1.1 → `使用默认账户登录进入 OpenWrt` → `系统菜单` → `TTYD 终端` → 输入命令

```yaml
openwrt-swap 1
```

- ### 备份/还原 EMMC 原系统

支持在 `TF/SD/USB` 中对盒子的 `EMMC` 分区进行备份/恢复。建议您在全新的盒子里安装 OpenWrt 系统前，先对当前盒子自带的安卓 TV 系统进行备份，以便日后在恢复电视系统等情况下使用。

请从 `TF/SD/USB` 启动 OpenWrt 系统，浏览器访问 OpenWrt 的默认 IP: 192.168.1.1 → `使用默认账户登录进入 OpenWrt` → `系统菜单` → `TTYD 终端` → 输入命令

```yaml
openwrt-ddbr
```

根据提示输入 `b` 进行系统备份，输入 `r` 进行系统恢复。

💡提示：须使用 `/mnt/*4/` 空间进行存放 `BACKUP-arm-64-emmc.img.gz` 备份文件，未创建 `TF/SD/USB` 扩展分区的用户，须先使用 `openwrt-tf` 命令创建扩展分区。

- ### 控制 LED 显示

从浏览器访问 OpenWrt 的默认 IP: 192.168.1.1 → `使用默认账户登录进入 OpenWrt` → `系统菜单` → `TTYD 终端` → 输入命令

```yaml
openwrt-led
```

根据 [LED 屏显示控制说明] 进行调试。

- ### 更多使用说明

使用 `firstboot` 命令可以恢复系统至初始化状态。在 OpenWrt 的使用中，一些可能遇到的常见问题详见 [router-config](router-config/README.md)

## 使用 GitHub Actions 进行编译

你可以通过修改 `router-config` 目录的相关个性化固件配置文件，以及 `.yml` 文件, 自定义和编译适合你的 OpenWrt 固件,  固件可以上传至 github.com 的 `Actions` 和 `Releases` 等处.

1. 你可以在 [router-config] 中查看个性化固件配置说明。编译流程控制文件是 [.yml]
2. 全新编译：在 github.com 的 [Action](https://github.com/00575gic-openwrt/actions) 选择 ***`Build OpenWrt`*** . 点击 ***`Run workflow`*** 按钮进行固件一站式编译和打包。
3. 再次编译：如果 [Releases](https://github.com/00575/amlogic-openwrt/releases) 中有已经编译好的 `openwrt-armvirt-64-default-rootfs.tar.gz` 文件，你只是想再次制作其他不同 soc 的盒子，可以跳过 OpenWrt 源文件的编译，直接进行二次制作。在 [Actions](https://github.com/00575/amlogic-openwrt/actions) 页面中选择  ***`Use Releases file to Packaging`*** ，点击 ***`Run workflow`*** 按钮即可二次编译。
4. 更多支持：编译好的 `openwrt-armvirt-64-default-rootfs.tar.gz` 文件是制作各种不同 SoC 固件的通用文件，也适用于使用 [unifreq](https://github.com/unifreq/openwrt_packit) 的打包脚本制作 OpenWrt 固件。他作为在盒子里使用 OpenWrt 和 Armbian 系统的开创者，对更多的设备进行了支持，如在 [Armbian](https://github.com/ophub/amlogic-s9xxx-armbian) 系统中通过 `KVM` 虚拟机使用的 OpenWrt（[qemu 版](https://github.com/unifreq/openwrt_packit/blob/master/files/qemu-aarch64/qemu-aarch64-readme.md)）、Allwinner (`微加云`)、Rockchip (`贝壳云`、`我家云`)，以及 Amlogic 系列等。打包方法详见他的仓库说明，在 Actions 中通过 [packaging-openwrt-for-qemu-etc.yml](.github/workflows/packaging-openwrt-for-qemu-etc.yml) 可以调用他的打包脚本制作更多固件。

```yaml
- name: Package Armvirt as OpenWrt
  uses: ophub/amlogic-s9xxx-openwrt@main
  with:
    openwrt_path: openwrt/bin/targets/*/*/*rootfs.tar.gz
    openwrt_soc: s905x3_s905x2_s905x_s905w_s905d_s922x_s912
    openwrt_kernel: 5.10.125_5.15.50
```
- ### GitHub Actions 输入参数说明

相关参数与`本地打包命令`相对应，请参考上面的说明。

| 参数              | 默认值             | 说明                                        |
|-------------------|-------------------|-------------------------------------------|
| openwrt_path      | no                | 设置 `openwrt-armvirt-64-default-rootfs.tar.gz` 的文件路径，可以使用相对路径如 `openwrt/bin/targets/*/*/*rootfs.tar.gz` 或网络文件下载地址如 `https://github.com/*/releases/*/*rootfs.tar.gz` |
| openwrt_soc       | s905d_s905x3      | 设置打包盒子的 `SOC` ，功能参考 `-b` |
| openwrt_kernel    | 5.10.125_5.15.50   | 设置内核版本，功能参考 `-k` |
| auto_kernel       | true              | 设置是否自动采用同系列最新版本内核。功能参考 `-a` |
| version_branch    | stable            | 指定内核 [版本分支](https://github.com/ophub/kernel/tree/main/pub) 名称，功能参考 `-v` |
| openwrt_size      | 960               | 设置固件 ROOTFS 分区的大小，功能参考 `-s`      |

- ### GitHub Actions 输出变量说明

上传到 `Releases` 需要给仓库添加 `GITHUB_TOKEN` 和 `GH_TOKEN` 并设置 `Workflow 读写权限`，详见[使用说明](router-config/README.cn.md#2-设置隐私变量-github_token)。

| 参数                                      | 默认值              | 说明                     |
|------------------------------------------|--------------------|--------------------------|
| ${{ env.PACKAGED_OUTPUTPATH }}           | out                | 打包后的固件所在文件夹的路径  |
| ${{ env.PACKAGED_OUTPUTDATE }}           | 04.13.1058         | 打包日期（月.日.时分）      |
| ${{ env.PACKAGED_STATUS }}               | success / failure  | 打包状态。成功 / 失败       |

## openwrt-*-rootfs.tar.gz 用于打包的文件编译选项

| Option | Value |
| ---- | ---- |
| Target System | QEMU ARM Virtual Machine |
| Subtarget | QEMU ARMv8 Virtual Machine(cortex-a53) |
| Target Profile | Default |
| Target Images | tar.gz |

## OpenWrt 固件默认信息

| 名称 | 值 |
| ---- | ---- |
| 默认 IP | 192.168.1.1 |
| 默认账号 | root |
| 默认密码 | password |
| 默认 WIFI 名称 | OpenWrt |
| 默认 WIFI 密码 | none |
