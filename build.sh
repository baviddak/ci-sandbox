#!/bin/bash
BIN=bin/
SRC=src/

# make the binaries dir
mkdir ${BIN}

# remove the old binaries
rm -f ${BIN}*

# build the new binaries
gcc -o ${BIN}client ${SRC}client.c
gcc -o ${BIN}server ${SRC}server.c
