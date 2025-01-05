---
title: 如何下載「ISO檔」
nav_order: 7010
has_children: false
parent: 關於「ISO檔案」的操作
grand_parent: 如何
---


# 如何下載「ISO檔」




## 主題

* [下載「ISO」](#下載iso)
* [校驗](#校驗)
* [接下來](#接下來)




## 下載「ISO」

可以到下面網址，找到一些「ISO 檔案」，可以下載下來，當作範例操作。

* [https://www.debian.org/CD/live/index.en.html](https://www.debian.org/CD/live/index.en.html)
* [https://www.debian.org/CD/live/index.zh-tw.html](https://www.debian.org/CD/live/index.zh-tw.html)
* [https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/](https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/)


舉例，我們要下載「`https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-12.8.0-amd64-standard.iso`」

> 執行下面指令，下載「`debian-live-12.8.0-amd64-standard.iso`」

``` sh
wget -c 'https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/debian-live-12.8.0-amd64-standard.iso'
```




## 校驗

> 執行下面指令，下載「`SHA256SUMS`」

``` sh
wget -c 'https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/SHA256SUMS'
```

> 接著執行下面指令，做「校驗」

``` sh
sha256sum -c SHA256SUMS
```

會顯示類似如下的訊息 (校驗需要等待一段時間，請靜待稍後完成顯示結果)

```
debian-live-12.8.0-amd64-standard.iso: OK
```




## 接下來

* [掛載「ISO」](https://samwhelp.github.io/note-about-remix-linux-distro-iso/read/howto/iso/mount-iso.html)
* [解開「ISO」](https://samwhelp.github.io/note-about-remix-linux-distro-iso/read/howto/iso/extract-iso.html)
