---
title: 如何掛載「ISO檔」
nav_order: 7010
has_children: false
parent: 關於「ISO檔案」的操作
grand_parent: 如何
---


# 如何掛載「ISO檔」


## 主題

* [範例下載](#範例下載)




## 範例下載

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

