#!/usr/bin/env sh

if ! [ $(id -u) = 0 ]; then
    echo "You must be root to do this." 1>&2
    exit 100
fi

cp carpalx* /lib/udev/keymaps
cp 95-carpalx-keyboard.rules /etc/udev/rules.d
