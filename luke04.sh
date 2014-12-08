#! /bin/bash

# Desember kan ofte være litt kjølig. Filen
# https://dl.dropboxusercontent.com/u/45621/kilma_data_blindern.txt viser
# klimadata målt på Blindern hver dag siden 1. januar 1950 og frem til 1.
# januar 2014.
#
# I denne julenøtten ønsker vi å finne hvilken dato den laveste temperaturen i
# en desember måned ble målt på Blindern. Om den laveste temperaturen ble målt
# på flere datoer er det den tidligste vi er ute etter.
#
# Svaret skal oppgis på følgende form dd.mm.åååå. Eksempelvis: 24.12.2014
#
# Julegavetips: Det er i kolonnen med overskriften TAN du finner den laveste
# målte temperaturen for et døgn.

curl -s https://dl.dropboxusercontent.com/u/45621/kilma_data_blindern.txt -o /tmp/klima.txt
egrep "18700 ..\.12\..... " /tmp/klima.txt  | awk '{print $4,$2}' | sed "s/,/./g" | sort -n | head -n 1 | awk '{print $2}'
