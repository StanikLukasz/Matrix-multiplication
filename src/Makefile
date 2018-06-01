FFLAGS = -std08 -fpp
FILES = matrixMath.F90 main.F90

main_O0:
	ifort $(FFLAGS) $(FILES) -o "main_O0" -O2
main_O1:
	ifort $(FFLAGS) -D "DOT_USE=1" $(FILES) -o "main_O1" -O2
main_O2:
	ifort $(FFLAGS) -D "CACHE_OPT=1" $(FILES) -o "main_O2" -O2
main_O3:
	ifort $(FFLAGS) -D "DOT_USE=1" -D "CACHE_OPT=1" $(FILES) -o "main_O3" -O2

times_O0:
	ifort $(FFLAGS) -D "TOFILE" $(FILES) -o "main_tofile_O0" -O2
	main_tofile_O0 100 > times_O0.txt
	main_tofile_O0 126 >> times_O0.txt
	main_tofile_O0 160 >> times_O0.txt
	main_tofile_O0 202 >> times_O0.txt
	main_tofile_O0 256 >> times_O0.txt
	main_tofile_O0 324 >> times_O0.txt
	main_tofile_O0 410 >> times_O0.txt
	main_tofile_O0 518 >> times_O0.txt
	main_tofile_O0 655 >> times_O0.txt
	main_tofile_O0 829 >> times_O0.txt
	main_tofile_O0 1049 >> times_O0.txt
	main_tofile_O0 1326 >> times_O0.txt
	main_tofile_O0 1678 >> times_O0.txt
	main_tofile_O0 2122 >> times_O0.txt
	rm main_tofile_O0.exe
times_O1:
	ifort $(FFLAGS) -D "TOFILE" -D "DOT_USE=1" $(FILES) -o "main_tofile_O1" -O2
	main_tofile_O1 100 > times_O1.txt
	main_tofile_O1 126 >> times_O1.txt
	main_tofile_O1 160 >> times_O1.txt
	main_tofile_O1 202 >> times_O1.txt
	main_tofile_O1 256 >> times_O1.txt
	main_tofile_O1 324 >> times_O1.txt
	main_tofile_O1 410 >> times_O1.txt
	main_tofile_O1 518 >> times_O1.txt
	main_tofile_O1 655 >> times_O1.txt
	main_tofile_O1 829 >> times_O1.txt
	main_tofile_O1 1049 >> times_O1.txt
	main_tofile_O1 1326 >> times_O1.txt
	main_tofile_O1 1678 >> times_O1.txt
	main_tofile_O1 2122 >> times_O1.txt
	rm main_tofile_O1.exe
times_O2:
	ifort $(FFLAGS) -D "TOFILE" "CACHE_OPT=1" $(FILES) -o "main_tofile_O2" -O2
	main_tofile_O2 100 > times_O2.txt
	main_tofile_O2 126 >> times_O2.txt
	main_tofile_O2 160 >> times_O2.txt
	main_tofile_O2 202 >> times_O2.txt
	main_tofile_O2 256 >> times_O2.txt
	main_tofile_O2 324 >> times_O2.txt
	main_tofile_O2 410 >> times_O2.txt
	main_tofile_O2 518 >> times_O2.txt
	main_tofile_O2 655 >> times_O2.txt
	main_tofile_O2 829 >> times_O2.txt
	main_tofile_O2 1049 >> times_O2.txt
	main_tofile_O2 1326 >> times_O2.txt
	main_tofile_O2 1678 >> times_O2.txt
	main_tofile_O2 2122 >> times_O2.txt
	rm main_tofile_O2.exe
times_O3:
	ifort $(FFLAGS) -D "TOFILE" -D "DOT_USE=1" -D "CACHE_OPT=1" $(FILES) -o "main_tofile_O3" -O2
	main_tofile_O3 100 > times_O3.txt
	main_tofile_O3 126 >> times_O3.txt
	main_tofile_O3 160 >> times_O3.txt
	main_tofile_O3 202 >> times_O3.txt
	main_tofile_O3 256 >> times_O3.txt
	main_tofile_O3 324 >> times_O3.txt
	main_tofile_O3 410 >> times_O3.txt
	main_tofile_O3 518 >> times_O3.txt
	main_tofile_O3 655 >> times_O3.txt
	main_tofile_O3 829 >> times_O3.txt
	main_tofile_O3 1049 >> times_O3.txt
	main_tofile_O3 1326 >> times_O3.txt
	main_tofile_O3 1678 >> times_O3.txt
	main_tofile_O3 2122 >> times_O3.txt
	rm main_tofile_O3.exe
times_matmul:
	ifort $(FFLAGS) -D "TOFILE" -D "DEFAULT_MAT_MUL" main.F90 -o "main_tofile_matmul" -O2
	main_tofile_matmul 100 > times_matmul.txt
	main_tofile_matmul 126 >> times_matmul.txt
	main_tofile_matmul 160 >> times_matmul.txt
	main_tofile_matmul 202 >> times_matmul.txt
	main_tofile_matmul 256 >> times_matmul.txt
	main_tofile_matmul 324 >> times_matmul.txt
	main_tofile_matmul 410 >> times_matmul.txt
	main_tofile_matmul 518 >> times_matmul.txt
	main_tofile_matmul 655 >> times_matmul.txt
	main_tofile_matmul 829 >> times_matmul.txt
	main_tofile_matmul 1049 >> times_matmul.txt
	main_tofile_matmul 1326 >> times_matmul.txt
	main_tofile_matmul 1678 >> times_matmul.txt
	main_tofile_matmul 2122 >> times_matmul.txt
	rm main_tofile_matmul.exe

