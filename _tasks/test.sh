#!/bin/sh

passwd=$(date +'%a')@$(date +'%m%y')
fyl=NseFoExchDetails.conf
andd(){
	while IFS=, read ip str rdir cfgdir engine
	do
		old=$(ssh root@$ip "cat $rdir/$cfgdir/$fyl | grep '@' | cut -d = -f 2 | head -n 1")
		echo $passwd
		echo $old
		echo $rdir/$cfgdir/$fyl
		ssh root@$ip "sed -i s/$passwd/EMPTY/g  $rdir/$cfgdir/$fyl"
		ssh root@$ip  "sed -i s/$old/$passwd/g  $rdir/$cfgdir/$fyl"
	done<server.csv
}
andd
