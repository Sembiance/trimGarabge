#!/bin/bash
rm -f trimGarbage*.tar trimGarbage*.tar.gz

TRIM_GARBAGE_VERSION=$(grep "define TRIM_GARBAGE_VERSION" trimGarbage.c | cut -d'"' -f2)
tar -cvf trimGarbage-$TRIM_GARBAGE_VERSION.tar Makefile trimGarbage.c
gzip trimGarbage-$TRIM_GARBAGE_VERSION.tar

echo "Available Now: trimGarbage-$TRIM_GARBAGE_VERSION.tar.gz"
