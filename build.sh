#!/bin/bash
VASM_HOME=~/Downloads/vasm/
$VASM_HOME/vasm6502_oldstyle -Fbin -dotdir counter.65s
printf "\na.out contents\n\n"
hexdump -C a.out