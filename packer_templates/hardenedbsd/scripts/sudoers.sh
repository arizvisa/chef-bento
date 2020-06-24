#!/bin/sh -eux

pkg install -y sudo;
echo "user ALL=(ALL) NOPASSWD: ALL" >>/usr/local/etc/sudoers;
