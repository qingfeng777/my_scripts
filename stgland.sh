#!/bin/bash

# start goland ,go coning

> goland.log
echo $MY_PWD | sudo -S /home/mingbai/Downloads/GoLand-2018.1.4/bin/goland.sh > goland.log 2>&1 &
