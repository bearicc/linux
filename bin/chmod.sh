#!/bin/bash

list="Documents Pictures Music Videos local/bin Downloads Templates"
for i in $list; do find /home/bear/$i -type d -exec chmod 755 {} \; ; done
for i in $list; do find /home/bear/$i -type f -exec chmod 644 {} \; ; done

chmod 755 /home/bear/local/bin/*
