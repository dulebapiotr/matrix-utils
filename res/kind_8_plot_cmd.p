unset grid
set terminal pdf
set output "wykres8.pdf"
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
plot "time_naiv_8" title "naive"
replot "time_better_8" title "better"
replot "time_dot_8" title "dot"
replot "time_matmul_8" title "matmul"


unset multi

unset grid