#!/bin/bash

# start goland ,go coning

> goland.log
echo $MY_PWD | sudo -S openvpn /etc/openvpn/client.ovpn > openvpn.log 2>&1 &
