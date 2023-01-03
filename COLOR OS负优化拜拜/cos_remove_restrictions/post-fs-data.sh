#!/system/bin/sh
MODDIR=${0%/*}
function mount_replacing () {
	if [ -e "$1" ] ; then
		mount --bind "$MODDIR$1" "$1"
	else
		echo "$1 none"
	fi
}

