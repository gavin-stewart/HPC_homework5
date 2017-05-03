CC=gcc
CFLAGS=-Wall
LIBS=-lm
OMP=-fopenmp


all: multigrid_2d multigrid_1dOMP

multigrid_2d: multigrid_2d.c
	${CC} ${CFLAGS} ${LIBS} $^ -o $@

multigrid_1dOMP: multigrid_1dOMP.c
	${CC} ${CFLAGS} ${LIBS} ${OMP} $^ -o $@
