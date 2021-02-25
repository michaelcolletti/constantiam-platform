#!/bin/bash
#
#
#
printf "Welcome at $LOGNAME `date` "
printf "Please add your credentials \n"
aws configure && ./mk_keys.sh



