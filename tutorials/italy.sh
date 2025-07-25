#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2025-07-23T13:16:29
# User:    root
# Purpose: Purpose of this script
export GMT_SESSION_NAME=$$      # Set a unique session name
gmt begin figurename png
    # Place modern session commands here
    gmt coast -R5/20/35/50 -Wthin -Gwheat -EIT+gred -Df -Sazure -B -N1/thick,red -JM15c
    gmt inset begin -DjTR+w5c+o0.2c -F+gwhite+pthick
        gmt coast -Rg -JG10E/25N/? -Gwhite -Bg -EIT+gred -Df -Sazure -Wthin
        gmt text -F+f8p,Helvetica,black+jLB -Dj0.2c -N << EOF
10E 25N Italy
EOF
    gmt inset end
gmt end
# End of GMT modern mode bash template
# End of script italy.sh
