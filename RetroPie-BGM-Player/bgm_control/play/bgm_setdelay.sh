#!/bin/bash 
#####################################################################
#Project		:	Naprosnia RetroPie_BGM_Player for PlayBox v2
#Version		:	2.0.2022
#Git			:	https://github.com/2play/RetroPie_BGM_Player
#####################################################################
#Script Name	:	bgm_setdelay.sh
#Date			:	20220325	(YYYYMMDD)
#Description	:	BGM Player autostart delay setting menu.
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
infobox="${infobox}RetroPie BGM Player Delay\n\n"
infobox="${infobox}Change the amount of seconds that you want to delay the BGM Player start when EmulationStation load.\n"
infobox="${infobox}___________________________________________________________________________\n\n"

dialog --backtitle "RetroPie BGM Player v.$bgm_version" --title "BGM Delay Description" --msgbox "${infobox}" 0 0
}
#description

function main_menu() {
    local choice

    while true; do
	
		source $BGMSETTINGS >/dev/null 2>&1
		
        choice=$(dialog --backtitle "RetroPie BGM Player v.$bgm_version" --title "BGM Delay" \
            --ok-label "Select" --cancel-label "Back" --no-tags --default-item "$bgm_delay"\
            --menu "Delay at ES start." 25 75 20 \
            0 "0 Instant Play" \
            3 "3 Seconds Delay" \
            5 "5 Seconds Delay" \
            10 "10 Seconds Delay" \
			15 "15 Seconds Delay" \
            2>&1 > /dev/tty)
			
			opt=$?
			[ $opt -eq 1 ] && exit
			
			bash $BGM/bgm_system.sh -setsetting bgm_delay $choice
			
    done
}

main_menu

