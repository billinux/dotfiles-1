#!/bin/bash
# Display either fortunecow or the calendar
# By anup

MAX_NO=6
SELECTED_NO=$[$RANDOM % $MAX_NO]

FORTUNE_BASE_DIR=$HOME/data/fortunes

#fortune_paths="/usr/share/games/fortunes/"
#fortune_paths=" $FORTUNE_BASE_DIR/my_fortunes \
    #$FORTUNE_BASE_DIR/ascii-art/ \
    #$FORTUNE_BASE_DIR/bmc_fortunes/ \
    #$FORTUNE_BASE_DIR/comp/ \
    #$FORTUNE_BASE_DIR/esr_fortunes/ \
    #$FORTUNE_BASE_DIR/mario_fortunes/ \
    #$FORTUNE_BASE_DIR/others/ \
    #$FORTUNE_BASE_DIR/pop/ \
    #$FORTUNE_BASE_DIR/shlomif_fortunes/ \
    #$FORTUNE_BASE_DIR/ubuntu_fortunes/ \
    #$FORTUNE_BASE_DIR/ubuntu_fortunes/off/ \
    #$FORTUNE_BASE_DIR/others_BIG/ \
    #"

if [ $SELECTED_NO -le 4 ]
then
  ~/bin/fortunecow -e $FORTUNE_BASE_DIR/*/
  #~/bin/fortunecow $FORTUNE_BASE_DIR/*/
  #~/bin/fortunecow -e $fortune_paths 
  #~/bin/fortunecow $fortune_paths # remove big folder when using this
else
  calcurse -a
  #calcurse -a -r1
  #calendar -l 0
  echo ""
  echo "`date '+%b %d'` in history and elsewhere:"
  calendar -l 0 | sed 's/[a-zA-Z]* [0-9]*\(.*\)/\1/g'
fi
