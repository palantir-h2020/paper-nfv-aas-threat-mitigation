#!/usr/bin/gnuplot
set terminal png
set output  "memory.png"
set border 2 front lt black linewidth 1.000 dashtype solid
set grid lc rgb "#bbbbbb" 
set grid noxtics
set style fill solid 0.5 border -1
set style data boxplot
set title "SM Memory consumption"
set xlabel "Model complexity (Number of infrastructures)"
set format y "%.01t×10^{%T}";
set yrange [4e8:6.8e8]
set ytics 20e6
set xtics nomirror scale 0 
set ytics nomirror
set ylabel "Memory allocation per thread (Bytes)"
set xtics ('5' 1,'15' 2, '25' 3,'35' 4,'45' 5,'55' 6,'65' 7,'75' 8,'85' 9,'95' 10,'105' 11,'115' 12,'125' 13)
plot for [i=1:13] 'memory.csv' using (i):i notitle lc 2
