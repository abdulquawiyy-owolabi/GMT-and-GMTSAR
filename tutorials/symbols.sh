#!/usr/bin/env bash

gmt begin symbols png
    gmt coast -JM0/20c -R-87/50/-57/60 -W0.5p,grey43 -Sgrey88 -A300 -B
    echo -10 -30 | gmt plot -Sa2c -W2p,blue -Gorange
    echo -40 30 | gmt plot -Skvolcano/2c -W2p,red -Gyellow
gmt end show