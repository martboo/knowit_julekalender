#! /bin/bash

# Last ned følgende bilde:
# https://dl.dropboxusercontent.com/u/42659711/Santa.png
#
 
# Hvor mange piksler er det av den 10. (teller fra 1) mest brukte fargen (i ARGB-verdi) i dette bildet?

URL="https://dl.dropboxusercontent.com/u/42659711/Santa.png"
FILE="/tmp/Santa.png"
curl https://dl.dropboxusercontent.com/u/42659711/Santa.png -o $FILE -s
convert $FILE $FILE.txt

# > head /tmp/Santa.png.txt
# # ImageMagick pixel enumeration: 1600,1200,255,srgba
# 0,0: (  6, 26, 60,255)  #061A3C  srgba(6,26,60,1)

#Ugly, but it gets the work done
awk '{print $6}' $FILE.txt | sort -n | uniq -c | sort -n | tail -n 11 | head -n 1 | awk '{print $1}'
