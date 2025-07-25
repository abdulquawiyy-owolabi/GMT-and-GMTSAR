#!/usr/bin/env bash

cat > line.txt <<END
1 1
10 4
5 2
3 3
1 1
END

gmt begin lines png
    gmt plot line.txt -JX22c/10c -R0/10/0/5 -Ba1 -W9p,red+solid -Gp19
        # --PS_LINE_JOIN=bevel
    # gmt plot line.txt -W1p,white,30_30_5_30
gmt end show