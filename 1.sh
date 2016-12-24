#!/bin/bash
rm -f /usr/lib/modules/$(uname -r)/test.ko
cp test.ko /usr/lib/modules/$(uname -r)/
echo 'test' > /etc/modules-load.d/test.conf
depmod
