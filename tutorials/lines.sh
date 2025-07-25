#!/usr/bin/env bash

cat > line.txt <<END
1 1
2 2
3 3
4 4
5 5
END

gmt begin lines png
    gmt plot line.txt
gmt end show