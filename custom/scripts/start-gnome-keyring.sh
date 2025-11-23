#!/bin/bash

eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets,pkcs11,ssh)
export SSH_AUTH_SOCK
export GNOME_KEYRING_CONTROL
export GPG_AGENT_INFO

