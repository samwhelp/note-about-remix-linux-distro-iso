---
title: 如何解開「ISO檔」
nav_order: 7030
has_children: false
parent: 關於「ISO檔案」的操作
grand_parent: 如何
---


# 如何解開「ISO檔」




## 主題

* [承前](#承前)
* [解開「ISO」](#解開iso)
* [參考文章](#參考文章)





## 承前

> 延續之前的

* 「[如何下載「ISO檔」](download-iso)」
* 「[如何掛載「ISO檔」](mount-iso)」

> 接下來了解「[如何解開「ISO檔」](#解開iso)」。




## 解開「ISO」

> 除了可以透過「[掛載「ISO檔」](mount-iso)」的方式，將「ISO檔」裡面的檔案，複製出來。

> 也可以透過「[xorriso](https://manpages.debian.org/stable/xorriso/xorriso.1.en.html)」這個指令，直接將「ISO檔」裡面的檔案，提取出來。


``` sh
xorriso -osirrox on -indev "debian-live-12.8.0-amd64-standard.iso" -extract / iso && chmod -R +w iso
```

可以寫成「`function`」，實作如下

``` sh

mod_iso_extract () {

	local iso_file_path="${1}"
	local extract_dir_path="${2}"

	xorriso -osirrox on -indev "${iso_file_path}" -extract / "${extract_dir_path}" && chmod -R +w "${extract_dir_path}"

}

mod_iso_extract "debian-live-12.8.0-amd64-standard.iso" "iso"

```




## 參考文章

* [How to Create Custom Debian Based ISO](https://dev.to/vaiolabs_io/how-to-create-custom-debian-based-iso-4g37)




## Debian Package

| Debian Package |
| -------------- |
| [xorriso](https://packages.debian.org/stable/xorriso) |

> 在「Debian」，可以執行下面指令，安裝「Package: `xorriso`」。

``` sh
sudo apt-get install xorriso
```
