#!/system/bin/sh
MODDIR=${0%/*}
function auto_game_swtich_enable () {
	while true ; do
	echo 1 > /proc/touchpanel/game_switch_enable
	echo 0 > /proc/touchpanel/oplus_tp_limit_enable
	sleep 5
	done
}
auto_game_swtich_enable &