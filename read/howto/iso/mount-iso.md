---
title: 如何掛載「ISO檔」
nav_order: 7010
has_children: false
parent: 關於「ISO檔案」的操作
grand_parent: 如何
---


# 如何掛載「ISO檔」


## 主題

* [下載「ISO」](#下載iso)
* [掛載「ISO」](#掛載iso)
* [卸載「ISO」](#卸載iso)




## 下載「ISO」

可以到下面網址，找到一些「ISO 檔案」，可以下載下來，當作範例操作。

* [https://releases.ubuntu.com/](https://releases.ubuntu.com/)
* [https://releases.ubuntu.com/noble/](https://releases.ubuntu.com/noble/)


舉例，我們要下載「`https://releases.ubuntu.com/noble/ubuntu-24.04.1-desktop-amd64.iso`」

> 執行下面指令，下載「`ubuntu-24.04.1-desktop-amd64.iso`」

``` sh
wget -c 'https://releases.ubuntu.com/noble/ubuntu-24.04.1-desktop-amd64.iso'
```

> 執行下面指令，下載「`SHA256SUMS`」

``` sh
wget -c 'https://releases.ubuntu.com/noble/SHA256SUMS'
```

> 接著執行下面指令，做「校驗」

``` sh
sha256sum -c SHA256SUMS
```

會顯示類似如下的訊息 (校驗需要等待一段時間，請靜待稍後完成顯示結果)

```
ubuntu-24.04.1-live-server-amd64.iso: OK
```




## 掛載「ISO」

> 執行下面指令，產生一個目錄，名稱為「`iso-dir`」

``` sh
mkdir -p iso-dir
```

> 執行下面指令，將「`ubuntu-24.04.1-live-server-amd64.iso`」掛載到「`iso-dir`」這個目錄。

``` sh
sudo mount -o loop ubuntu-24.04.1-live-server-amd64.iso iso-dir
```

或是執行下面指令

``` sh
sudo mount -o loop -t iso9660 ubuntu-24.04.1-live-server-amd64.iso iso-dir
```

> 掛載成功後，執行下面指令

``` sh
ls iso-dir/ -1
```

顯示

```
boot
boot.catalog
casper
dists
EFI
install
md5sum.txt
pool
ubuntu
```




## 卸載「ISO」

> 執行下面指令，卸載「ISO」

``` sh
sudo umount iso-dir
```
