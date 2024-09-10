#!/bin/bash

export PATH="${PATH}:${HOME}/.local/bin/"

DIR=$HOME/Desktop/Wallpapers/
PICS=($(ls ${DIR}))

RANDOMPICS=${PICS[ $RANDOM % ${#PICS[@]} ]}

if [[ $(pidof swaybg) ]]; then
  pkill swaybg
fi

swaybg -i ${DIR}/${RANDOMPICS} & 

sleep 1.25

wal -i ${DIR}/${RANDOMPICS}
