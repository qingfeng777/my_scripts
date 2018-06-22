#!/bin/sh
# script to start TIM
# kill TIM before start TIM
for pid in `pgrep TIM.exe`; do
	if [ -n ${pid} ]; then
		kill ${pid}
	fi
done
# start TIM
# wine '~/.wine/drive_c/Program Files/Tencent/TIM/Bin/TIM.exe'
