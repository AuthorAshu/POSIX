#!/bin/sh

. "$PWD/_tasks/https"
. "$PWD/_tasks/des_ops"
. "$PWD/_tasks/collector"
. "$PWD/_tasks/passwd"


_main(){
	echo -e "\n\tPlease select accordingly :\n\t1. update contracts\n\t2. start DES\n\t3. download TAP messages\n\t4. update password.\n\t"
	read -p "     :" ops
	if [[ "$ops" = 1 ]]
	then
		distribute
	elif [[ "$ops" = 2 ]]
        then
                initDES
	elif [[ "$ops" = 3 ]]
        then
                collectTAP
	elif [[ "$ops" = 4 ]]
        then
                updatePASSWD
	else
		echo -e "\n\tFunction is still in development.!!!\n"
	fi
}
_main
