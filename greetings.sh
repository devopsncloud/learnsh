#!/bin/bash

NAME=""
GREETING=""

USAGE(){
    echo "USAGE:: $(basename $0) -n<NAME> -g<GREETING> "
    echo "Options::"
    echo "-n, Specify the name"
    echo "-g, Specify the greeting"
    echo "-h, Display help and exit"
}

while getopts "n:g:h" opt ;
do 
    case $opt in
        n)NAME="OPTARG";;
        g)GREETING="OPTARG";;
        h|*) USAGE; exit;;
    esac

done