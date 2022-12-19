#!/usr/bin/gnuplot

set terminal png
set output "figures/03-configuration.png"
set key right bottom
set border 2 front lt black linewidth 1.000 dashtype solid
set grid lc rgb "#bbbbbb" 
set grid noxtics
set style fill solid 0.5 border -1
set style data boxplot
set title "SC Configuration Time"
set xlabel "Configuration type"
set xrange [-0.5:4]
set yrange [1.25:2.25]
set ytics 0.25
set xtics nomirror scale 0 
set ytics nomirror
set ylabel "Configuration Time (s)"
set xtics ("Full" 0.6, "Constrained" 2.5)
plot "datasets/03-configuration.csv" using (0):1 w boxplot lt rgb "red" title "iptnetflow\\_ns" , \
 "datasets/03-configuration.csv" using (0.6):2 w boxplot lt rgb "blue" title "snort\\_ns" , \
 "datasets/03-configuration.csv" using (1.2):3 w boxplot lt rgb "green" title "suricata\\_ns" , \
 "datasets/03-configuration.csv" using (2):4 w boxplot lt rgb "red" notitle , \
 "datasets/03-configuration.csv" using (2.6):5 w boxplot lt rgb "blue" notitle , \
 "datasets/03-configuration.csv" using (3.2):6 w boxplot lt rgb "green" notitle
