#!/usr/bin/env bash
gmt begin ede pdf, png
	gmt coast -R5/20/35/50 -Wthin -Gwheat -EIT+gred -Df -Sazure -B -N1/thick,red -JM15c
	gmt inset begin -DjTR+w4c+o0.2c -F+gwhite+pthick
		gmt coast -Rg -JG10E/25N/? -Gwheat -Bg -EIT+gred
	gmt inset end
gmt end show
