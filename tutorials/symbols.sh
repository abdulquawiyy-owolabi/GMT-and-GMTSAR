#!/usr/bin/env bash

gmt begin symbols png
    gmt coast -JM0/20c -R-87/50/-57/60 -W0.5p,grey43 -Sgrey88 -A300 -B
    # echo -10 -30 | gmt plot -Sa2c -W2p,blue -Gorange
    # echo -40 30 | gmt plot -Skvolcano/2c -W2p,red -Gyellow
    gmt plot flight.txt -W5p,yellow --PS_LINE_CAP=round \
        -Sqn1:+f12p,Helvetica-Bold+Lh+v
    gmt plot flight.txt -Skvolcano/0.5c
    gmt text -F+f12p,Helvetica-Bold+j -Dj1p/7p
    echo -50 40 | gmt plot -Skb747/10c
gmt end show