#!/usr/bin/env bash

#pforwavs=`ll /root/sondconvert | awk '{ print $9 }'`
#pkg install -y lame

for i in *.wav
    do
        if [ -e "$i" ]
            then
                file=`echo "$i" | awk 'BEGIN{ FS = "."; OFS=".";} { print $1,$2,$3,$4 }'`
                lame -h -b 192 "$i" "$file.mp3"
        fi
    done

