#!/usr/bin/env bash

rm -f work.img

dd if=/dev/zero of=work.img bs=1k count=1 seek=3999999

sudo mkfs.ext4 work.img

