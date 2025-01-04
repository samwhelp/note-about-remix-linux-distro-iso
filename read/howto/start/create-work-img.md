---
title: 產生「work img file」
nav_order: 7010
has_children: false
parent: 開始
grand_parent: 如何
---


# 產生「work img file」




## 主題

* [範例腳本](#範例腳本)
* [參考文章](#參考文章)
* [操作步驟](#操作步驟)




## 範例腳本

| 範例腳本 |
| --- |
| [create-work-img](https://github.com/samwhelp/note-about-remix-linux-distro-iso/tree/gh-pages/_demo/howto/start/create-work-img) |




## 參考文章

| 參考文章 |
| ------- |
| [改裝 Ubuntu](http://amitmason.blogspot.com/2011/04/ubuntu.html) |




## 操作步驟

* [產生「映像檔」](#產生映像檔)
* [格式化「映像檔」](#格式化映像檔)
* [掛載「映像檔」](#掛載映像檔)
* [切換到「工作目錄」](#切換到工作目錄)
* [卸載「映像檔」](#卸載映像檔)




### 產生「映像檔」

> 執行下面指令，產生一個大小為「4G」的「映像檔」，名稱為「`work.img`」。

``` sh
dd if=/dev/zero of=work.img bs=1k count=1 seek=3999999
```


### 格式化「映像檔」

> 執行下面指令，將「`work.img`」這個「映像檔」，格式化成「`ext4`」。

``` sh
sudo mkfs.ext4 work.img
```



### 掛載「映像檔」

> 執行下面指令，產生一個「工作目錄」，名稱為「`work`」。

``` sh
mkdir -p work
```

> 執行下面指令，將「`work.img`」這個「映像檔」，掛載到「`work`」這個「目錄」。

``` sh
sudo mount -o loop work.img work
```


### 切換到「工作目錄」

> 執行下面指令，切換到「`work`」這個「目錄」

``` sh
cd work
```

> 由於這個目錄的「擁有者」是「`root`」

> 所以我們切換到「`root`」這個帳號來執行「後續的動作」，會比較方便操作。

> 執行下面指令，切換到「`root`」這個帳號

``` sh
sudo su
```


### 產生「檔案」

> 執行下面指令，產生一個空的檔案「README.md」

``` sh
touch README.md
```


### 卸載「映像檔」

> 執行下面指令，離開「`root`」帳號

``` sh
exit
```

> 執行下面指令，切換到「上一層目錄」

``` sh
cd ..
```


> 執行下面指令，卸載「映像檔」

``` sh
sudo umount work
```
