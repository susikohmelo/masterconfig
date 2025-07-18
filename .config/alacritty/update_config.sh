#!/bin/sh

CONF=~/masterconfig/.config/alacritty/alacritty.toml

# get last line which has the theme number
TEMPLATE_NO=$( tail -n 1 $CONF )

rm -f $CONF
cat ~/masterconfig/.config/alacritty/main_template.toml > $CONF

if [[ $TEMPLATE_NO == "#1" ]];
then
	cat ~/masterconfig/.config/alacritty/theme_1.toml >> $CONF
else
	cat ~/masterconfig/.config/alacritty/theme_2.toml >> $CONF
fi

