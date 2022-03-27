#!/bin/bash 
#####################################################################
#Project		:	Naprosnia RetroPie_BGM_Player for PlayBox v2
#Version		:	2.0.2022
#Git			:	https://github.com/2play/RetroPie_BGM_Player
#####################################################################
#Script Name	:	bgm_setnonstop.sh
#Date			:	20220325	(YYYYMMDD)
#Description	:	BGM Player, never stop when you play games.
#Usage			:	Should be called from bgm_control.sh.
#Author       	:	Luis Torres aka Naprosnia, PlayBox v2 version By 2Play!
#####################################################################
#Credits		:	crcerror : https://github.com/crcerror
#####################################################################

BGM="$HOME/RetroPie-BGM-Player"
BGMSETTINGS="$BGM/bgm_settings.ini"
VERSION="$BGM/version.sh"
source $VERSION >/dev/null 2>&1

function description() {
infobox=
infobox="${infobox}___________________________________________________________________________\n\n"
infobox="${infobox}RetroPie BGM Player Non Stop\n\n"
infobox="${infobox}If enabled, this option keep BGM Player playing while you play games.\n"
infobox="${infobox}___________________________________________________________________________\n\n"

dialog --backtitle "RetroPie BGM Player v.$bgm_version" --title "BGM Non Stop Description" --msgbox "${infobox}" 0 0
}
#description

function main_menu() {
    local choice

    while true; do
	
		source $BGMSETTINGS >/dev/null 2>&1
		[ $bgm_nonstop -eq 0 ] && status=( "disabled" "Enable" 1 )  || status=( "enabled" "Disable" 0 )
		
        choice=$(dialog --backtitle "RetroPie BGM Player v.$bgm_version" --title "Non Stop Play" \
            --ok-label "Select" --cancel-label "Back" --no-tags \
            --menu "BGM Non Stop is ${status[0]}" 25 75 20 \
            1 "${status[1]} Non Stop" \
            2>&1 > /dev/tty)

        opt=$?
		[ $opt -eq 1 ] && exit
		
		bash $BGM/bgm_system.sh -setsetting bgm_nonstop ${status[2]}
		
    done
}

main_menu