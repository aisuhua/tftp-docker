#!/bin/bash

set -xe

/usr/sbin/in.tftpd --listen --user tftp --address :69 --secure -vvv /data
busybox syslogd -n -O /dev/stdout
