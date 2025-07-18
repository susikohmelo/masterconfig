#!/bin/sh

CONF=~/masterconfig/.config/alacritty/alacritty.toml
TEMPLATE_NO=$( tail -n 1 $CONF )

if [[ $TEMPLATE_NO == "#1" ]];
then
	export PROMPT_TIME_FG="#e5e1d8"
	export PROMPT_TIME_BG="#000000"
	
	export PROMPT_NAME_FG="#000000"
	export PROMPT_NAME_BG="#56a9e9"
	
	export PROMPT_PWD_FG="#000000"
	export PROMPT_PWD_BG="#e5e1d8"

	export PROMPT_ARROW_FG="#e5e1d8"
	export PROMPT_ARROW_BG="#000000"
else
	export PROMPT_TIME_FG="#FF9A00"
	export PROMPT_TIME_BG="#000000"
	
	export PROMPT_NAME_FG="#000000"
	export PROMPT_NAME_BG="#FF9A00"
	
	export PROMPT_PWD_FG="#FF9A00"
	export PROMPT_PWD_BG="#000000"

	export PROMPT_ARROW_FG="#FF9A00"
	export PROMPT_ARROW_BG="#000000"
fi

