## Mnozenie macierzy

### Zadanie

http://home.agh.edu.pl/~macwozni/fort/projekt2.pdf

### Teoria

https://pl.wikipedia.org/wiki/Mno%C5%BCenie_macierzy

### Praktyka

#### Specyfikacja

* U¿yty kompilator: ifort
* U¿yty jezyk: Fortran2008

#### Instrukcja uzytkowania

Aby skompilowac program nalezy uzyc odpowiedniej reguly make 
* `make main_O0` - skompiluje program nie uzywajac zadnej opcji optymalizacji poza opcja `-O2` kompilatora
* `make main_O1` - wykorzystuje `dot-product` zamiast wlasnej implemetacji mnozenia elementow macierzy
* `make main_O2` - optymalizacja z wykorzystaniem pamieci cache
* `make main_O3` - polaczenie opcji O1 oraz O2
* `make main_matmul` - wykorzystanie wbudowanej funkcji `matmul` zamiast wlasnej implementacji mnozenia

Nastepnie mozna wywolac mnozenie macierzy kwadratowych o romiarach NxN wywolujac program main_<OPCJA> N, odpowiednio do uzytej opcji kompilowania.

#### Wyniki

Ponizej przedstawiam wykresy zaleznosci czasu obliczen od rozmiaru mnozonych macierzy kwadratowych (w zakresie [100, 2122] o skali logarytmicznej o podstawie pierwiastek z 1,6).

##### tabela pomiarow
![table](https://github.com/StanikLukasz/Matrix-multiplication/blob/master/times/table.PNG)
##### wykres czasu od uzytej opcji kompilacji
![chart](https://github.com/StanikLukasz/Matrix-multiplication/blob/master/times/chart.PNG)

Jak widac czasu niezbyt sie roznia w zaleznosci od opcji kompilacji. Co ciekawe, im lepsza nasza "optymalizacja" tym czas obliczen jest dluzszy. :)