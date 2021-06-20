#!/bin/csh
#number of threads:
foreach t ( 1000000 1500000 2000000 2500000 3000000 3500000 4000000 4500000 5000000)
	g++ -DARRAY_SIZE=$t project_4.cpp -o prog -lm -fopenmp
	./prog
end

#clear files
rm -f project_4.o prog
