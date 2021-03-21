#!/bin/bash
if [ ! -d "eigen" ]
then
    wget https://gitlab.com/libeigen/eigen/-/archive/3.3.7/eigen-3.3.7.tar.bz2
    tar -xvjf eigen-*.tar.bz2
    rm eigen-*.tar.bz2
    mv eigen* eigen
fi

g++-10 main.cpp -o main -std=c++17 -Ieigen
