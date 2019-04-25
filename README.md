# Programownaie w języku Fortran - Projekt 1
Program porównujący czas działania równych metod mnożenia macierzy, typów real dla kind = 4,8 i 16.

## Moduły
W katalogu src znajdują się 3 moduły (naivemath, bettermath, dotmath) realizująze interfejsy mnożenia macierzy, dla typów real. 

## Testy i pomiary
W katalogu src znajdują się program main, który dokonuje pomiarów czasów mnożenia różnych rozmiarów macierzy przy użyciu różńych metod, dla różnych kind-ów. Wyniki są zapisywane do katalogu res.

## Wykresy
W katalogu res znajdują się 3 pliki gnuplot-a (kind_4_plot_cmd.p, kind_8_plot_cmd.p, kind_16_plot_cmd.p). Aby uzyskać wykresy w formacie pdf należy w poziomu katalogu wykonac następujące komendy:
```
gnuplot kind_4_plot_cmd.p
gnuplot kind_8_plot_cmd.p
gnuplot kind_16_plot_cmd.p
```
Pliki pdf powinny pojawić się w bieżązym katalogu.
