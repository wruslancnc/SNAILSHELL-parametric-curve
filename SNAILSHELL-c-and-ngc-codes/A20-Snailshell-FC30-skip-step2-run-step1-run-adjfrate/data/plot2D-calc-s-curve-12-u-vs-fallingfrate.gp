
## File: plot2D-s-curve-12-u-vs-fallingfrate.gp

clear
set size square
set autoscale
set grid

set xlabel "parameter u"
set ylabel "frate (mm/s)"
set title  "Plot 2D (u,frate) Falling S-curve feedrate profiles (highlevel)" 

## set title  "plot2D-s-curve-12-u-vs-fallingfrate.gp"

# COMMENT RANGES FOR DEFAULT
set xrange [ 0.950 : +1.000]
set yrange [ -30.0 : +40.0]


## PLOT CHECK
plot   "data_calc_u_next.txt" using 2:14 with lines title "  curr-frate"
replot "data_calc_u_next.txt" using 2:15 with lines title " frate-limit"
replot "data_calc_u_next.txt" using 2:16 with lines title "x-axis-frate"
replot "data_calc_u_next.txt" using 2:17 with lines title "y-axis-frate"


# DATA COLUMNS INDEX = COLUMN NUMBER
# rtime[1] 
# u[2] 
# u_next[3] 
# t_interpol[4] 
# first_order[5] 
# second_order[6] 
# diff[7] 
# pos_x[8]
# pos_y[9]
# pos_r[10] 
# eps[11]   ABOUT 0.000000621355
# rho[12] 
# curr_tang_accn[13] 
# curr_frate[14] 
# frate_limit[15] 
# x_frate[16] 
# y_frate[17]

# DTStamp_FHdata_calc_u_next 2022-06-23 12:23:39 179309410 

# EXECUTION
# gnuplot -p plot2D_calc_u_next_00_u_versus_u_next.gp


