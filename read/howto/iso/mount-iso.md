---
title: 如何掛載「ISO檔」
nav_order: 7010
has_children: false
parent: 關於「ISO檔案」的操作
grand_parent: 如何
---


# 如何掛載「ISO檔」




## 主題

* [承前](#承前)
* [掛載「ISO」](#掛載iso)
* [卸載「ISO」](#卸載iso)
* [接下來](#接下來)




## 承前

> 延續之前的「[如何下載「ISO檔」](download-iso)」，接下來了解「[如何掛載「ISO檔」](#掛載iso)」。




## 掛載「ISO」

> 執行下面指令，產生一個目錄，名稱為「`iso-dir`」

``` sh
mkdir -p iso-dir
```

> 執行下面指令，將「`debian-live-12.8.0-amd64-standard.iso`」掛載到「`iso-dir`」這個目錄。

``` sh
sudo mount -o loop debian-live-12.8.0-amd64-standard.iso iso-dir
```

或是執行下面指令

``` sh
sudo mount -o loop -t iso9660 debian-live-12.8.0-amd64-standard.iso iso-dir
```

> 掛載成功後，執行下面指令

``` sh
ls iso-dir/ -1
```

顯示

```
boot
debian
dists
EFI
efi.img
firmware
install
isolinux
live
md5sum.README
md5sum.txt
pool
pool-udeb
sha256sum.README
sha256sum.txt
tools
```




## 卸載「ISO」

> 執行下面指令，卸載「ISO」

``` sh
sudo umount iso-dir
```




## 接下來

* [解開「ISO」](extract-iso)
