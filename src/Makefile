FFLAGS = -std08 -fpp

main_O0:
	ifort $(FFLAGS) matrixMath.F90 main.F90 -o "main_O0"
main_O1:
	ifort $(FFLAGS) -D "DOT_USE=1" matrixMath.F90 main.F90 -o "main_O1"
main_O2:
	ifort $(FFLAGS) -D "CACHE_OPT=1" matrixMath.F90 main.F90 -o "main_O2"
main_O3:
	ifort $(FFLAGS) -D "DOT_USE=1" -D "CACHE_OPT=1" matrixMath.F90 main.F90 -o "main_O3"

