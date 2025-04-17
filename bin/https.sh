#!/bin/sh

if [ "x$1" = "x" ]; then
    echo "Usage: $0 [enable|disable]"
    exit
fi
if [ "x$1" = "xenable" ]; then
    sudo iptables -A INPUT -p tcp --tcp-flags RST RST --sport 443 -j DROP
    sudo cp /etc/resolv.conf /etc/resolv.conf.backup
    sudo cp /etc/resolv.conf.cf /etc/resolv.conf
elif [ "x$1" = "xdisable" ]; then
    sudo iptables -D INPUT -p tcp --tcp-flags RST RST --sport 443 -j DROP
    sudo cp /etc/resolv.conf.backup /etc/resolv.conf
fi
