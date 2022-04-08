#!/bin/sh
CPU_USAGE=$(top -n 1 | grep "%Cpu" | cut -d "," -f 1 | awk '{print $2}')
echo "CPU USAGE:$CPU_USAGE%"
if [ $(echo "$CPU_USAGE >= 90.0" | bc) -eq 1 ]
then
   echo "cpu usgae crossed 90%- Overloaded"
else
   echo "All is well"
fi
  
