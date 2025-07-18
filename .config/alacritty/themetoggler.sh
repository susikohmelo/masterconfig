#!/bin/sh

CONF=~/masterconfig/.config/alacritty/alacritty.toml

# get last line which has the theme number
TEMPLATE_NO=$( tail -n 1 $CONF )

rm -f $CONF
cat ~/masterconfig/.config/alacritty/main_template.toml > ${CONF}.temp

if [[ $TEMPLATE_NO == "#2" ]];
then
	cat ~/masterconfig/.config/alacritty/theme_1.toml >> ${CONF}.temp
else
	cat ~/masterconfig/.config/alacritty/theme_2.toml >> ${CONF}.temp
fi

cp ${CONF}.temp ${CONF}
rm -f ${CONF}.temp

source ~/.config/alacritty/./prompt_update.sh
