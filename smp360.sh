#!/bin/sh
# smp360 collector
echo "Start smp360."

#echo "Enter password to zip the files:"
#read passzip

sh ./moat369/sh/run_all_sids.sh

#zip -P $passzip -qm smp360_output.zip smp360_*.zip

#echo "End smp360 collector. Output: smp360_output.zip"
echo "End smp360 collector."