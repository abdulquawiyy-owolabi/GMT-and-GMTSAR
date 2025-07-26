#!/usr/bin/env bash
# Plot DEM of Osun State, Nigeria using GMT

gmt begin dem png
    # Set region: Osun State, Nigeria (approx: 3.8°E-5.0°E, 7.3°N-8.1°N)
    gmt basemap -R3.8/5.0/7.3/8.1 -JM15c -Baf -BWSne+t"Osun State DEM"
    gmt makecpt -Crelief -T0/700
    gmt grdimage @earth_relief_03s -I+d -C
    # Add colorbar
    gmt colorbar -DJTC+o0/0.5c -W0.001 -Baf -By+l"Elevation (m)"
gmt end show