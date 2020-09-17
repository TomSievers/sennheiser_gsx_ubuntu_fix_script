#!/bin/sh

user=`whoami`
wd=`pwd`
udev_rules_p="/etc/udev/rules.d"
udev_rules_f="/90-pulseaudio.rules"
pulse_conf_p="/usr/share/pulseaudio/alsa-mixer/profile-sets"
pulse_conf_f="/sennheiser-gsx.conf"

if [ "$user" = "root" ]; then
    cp $wd$udev_rules_f $udev_rules_p
    cp $wd$pulse_conf_f $pulse_conf_p
else
    echo "Root privilages are need to copy files to the following directories:\n\t$pulse_conf_p\n\t$udev_rules_p"
fi