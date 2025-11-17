#!/bin/sh

set -eu
python3 ../disassembler/main.py bc.gb --source . --output _tmp --instrumentation untilMainMenu.data --instrumentation levelSelect.data --instrumentation level0.data --instrumentation level1.data --plugin plugins
make -C _tmp check
cp _tmp/* ./ -a
rm _tmp -rf
