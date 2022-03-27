#!/bin/bash 
#####################################################################
#Project		:	Naprosnia RetroPie_BGM_Player for PlayBox v2
#Version		:	2.0.2022
#Git			:	https://github.com/2play/RetroPie_BGM_Player
#####################################################################
#Script Name	:	bgm_control.sh
#Date			:	20220325	(YYYYMMDD)
#Description	:	BGM Player settings main menu.
#Usage			:	Should be called from RetroPie\ BGM\ Player.sh.
#Author       	:	Luis Torres aka Naprosnia, PlayBox v2 version By 2Play!
#####################################################################
#Credits		:	crcerror : https://github.com/crcerror
#####################################################################

# shorten paths
BGM="$HOME/RetroPie-BGM-Player"
BGMCONTROL="$BGM/bgm_control"
BGMCONTROLGENERAL="$BGMCONTROL/general"
BGMCONTROLPLAY="$BGMCONTROL/play"
BGMCONTROLPLAYER="$BGMCONTROL/player"
VERSION="$BGM/version.sh"
source $VERSION >/dev/null 2>&1

function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "RetroPie BGM Player v.$bgm_version" --title "Main Menu" \
            --ok-label "Select" --cancel-label "Exit" --no-tags \
            --menu "Settings" 25 75 20 \
			"$BGMCONTROLGENERAL/bgm_general" "1 General Settings" \
			"$BGMCONTROLPLAY/bgm_play" "2 Play Settings" \
			"$BGMCONTROLPLAYER/bgm_player" "3 Player Stuff" \
			"$BGMCONTROL/bgm_updater" "4 Update" \
            2>&1 > /dev/tty)
		
		opt=$?
		[ $opt -eq 1 ] && exit
		
        bash $choice.sh
		
    done
}

main_menu

