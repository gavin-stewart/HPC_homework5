CC=gcc
CFLAGS=-Wall -Wno-unused-function
LIBS=-lm -lrt
OMP=-fopenmp
EXEC=multigrid_2d multigrid_1dOMP multigrid_2dOMP

.PHONY: all clean

all: ${EXEC}

multigrid_2d: multigrid_2d.c
	${CC} ${CFLAGS} ${LIBS} $^ -o $@

multigrid_1dOMP: multigrid_1dOMP.c
	${CC} ${CFLAGS} ${LIBS} ${OMP} $^ -o $@

multigrid_2dOMP: multigrid_2dOMP.c
	${CC} ${CFLAGS} ${LIBS} ${OMP} $^ -o $@

clean:
	rm -f ${EXEC}
