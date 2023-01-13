#!/bin/bash
chmod +x /ttyd

if [[ $1 == "daemon" ]];then
	sleep 10
	while true;do
        if [[ -z `ps -aux|grep "${STEAMAPP}"|grep "game"` ]];then
			kill -9 $(ps aux | grep 'ttyd' | awk '{print $2}')
		fi
		sleep 3
	done
elif [[ $1 == "game" ]];then
    ${STEAMCMDDIR}/steamcmd.sh
else
	screen -dmUS daemon bash entrypoint.sh daemon
	screen -dmUS $STEAMAPP bash entrypoint.sh game
	ttyd -t titleFixed=$STEAMAPP -t disableReconnect=true -t scrollback=50000 -p $TTYD_PORT screen -dUR $STEAMAPP
fi
