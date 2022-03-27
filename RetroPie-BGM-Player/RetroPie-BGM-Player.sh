#!/bin/bash 
#####################################################################
#Project		:	Naprosnia RetroPie_BGM_Player for PlayBox v2
#Version		:	2.0.2022
#Git			:	https://github.com/2play/RetroPie_BGM_Player
#####################################################################
#Script Name	:	RetroPie-BGM-Player.sh
#Date			:	20220325	(YYYYMMDD)
#Description	:	Main Menu launcher.
#Usage			:	Should be placed inside RetroPie/retropiemenu/.
#Requirement	:	User should disable the option from ES Menu
#				:	/OTHER SETTINGS/PARSE GAMELISTS ONLY -> OFF
#				:	so, the menu option can be displayed on RetroPie menu.
#Author       	:	Luis Torres aka Naprosnia, PlayBox v2 version By 2Play!
#####################################################################
#Credits		:	crcerror : https://github.com/crcerror
#####################################################################

BGM="$HOME/RetroPie-BGM-Player"
bash $BGM/bgm_control.sh
