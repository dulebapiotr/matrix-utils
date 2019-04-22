unset grid
set terminal pdf
set output "wykres16.pdf"
set key box top left
set multi
set logscale x
set logscale y
set key opaque
set key box
set key width 1 height 0.5 font  'Arial, 14' 
set style data lines
set termopt enhanced
set xlabel 'N' font 'Arial,14'
set ylabel 'multiplication time' font 'Arial,14'
set xtics font 'Arial,14'
set ytics font 'Arial,14'
set termoption dashed
plot "time_naiv_16" title "naive"
replot "time_better_16" title "better"
replot "time_dot_16" title "dot"
replot "time_matmul_16" title "matmul"


unset multi

unset grid