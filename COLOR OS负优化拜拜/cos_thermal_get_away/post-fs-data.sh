#!/system/bin/sh
MODDIR=${0%/*}
function mount_replacing () {
	if [ -e "$1" ] ; then
		mount --bind "$MODDIR$1" "$1"
	else
		echo "$1 none"
	fi
}

mount_replacing /my_stock/app/COSA/COSA.apk
mount_replacing /my_stock/app/GameSpace/GameSpace.apk