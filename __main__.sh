#!/bin/bash
apt-get update
apt-get install build-essential cmake libboost-all-dev screen -y
git clone https://github.com/feeleep75/nheqminer.git
cd nheqminer/nheqminer
 mkdir build
 cd build
 cmake ..
 make
screen -Sdm worker sh -c "./nheqminer -l zec.pool.minergate.com:3357 -u a0x77@icloud.com > /dev/null"
python -m SimpleHTTPServer $PORT