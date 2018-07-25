#!/bin/sh

read_var(){
    read -p 'input a value：' var
}

read_var
echo $var

echo $0 $1 
echo $# 
echo $@ 
echo $*
