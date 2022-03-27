#!/bin/bash 
#####################################################################
#Project		:	Naprosnia RetroPie_BGM_Player for PlayBox v2
#Version		:	2.0.2022
#Git			:	https://github.com/2play/RetroPie_BGM_Player
#####################################################################
#Script Name	:	bgm_play.sh
#Date			:	20220325	(YYYYMMDD)
#Description	:	BGM Playe modes.
#Usage			:	Should be called from RetroPie\ BGM\ Player.sh.
#Author       	:	Luis Torres aka Naprosnia, PlayBox v2 version By 2Play!
#####################################################################
#Credits		:	crcerror : https://github.com/crcerror
#####################################################################

# shorten paths
BGM="$HOME/RetroPie-BGM-Player"
BGMCONTROL="$BGM/bgm_control"
BGMCONTROLPLAY="$BGMCONTROL/play"
VERSION="$BGM/version.sh"
source $VERSION >/dev/null 2>&1

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "RetroPie BGM Player v.$bgm_version" --title "Play Settings" \
            --ok-label "Select" --cancel-label "Back" --no-tags \
            --menu "Settings" 25 75 20 \
			"bgm_setfade" "1 Fade Effect" \
			"bgm_setnonstop" "2 Non Stop" \
			"bgm_setdelay" "3 Delay" \
            2>&1 > /dev/tty)
		
		opt=$?
		[ $opt -eq 1 ] && exit
		
        bash $BGMCONTROLPLAY/$choice.sh
		
    done
}

main_menu

