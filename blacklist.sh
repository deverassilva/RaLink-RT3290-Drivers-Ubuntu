#!/bin/bash

# bash script to run sh file in the terminal emulators

# Copyright (C) 2015 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

cd "`dirname "$0"`"

modprobe -r rt2800pci
modprobe -r rt2x00pci

cp blacklist-ralink.conf /etc/modprobe.d/

if [ "$?" -ne 0 ]
then
    exit 1
fi

exit 0
