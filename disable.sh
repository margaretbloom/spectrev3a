#!/bin/bash

sudo modprobe msr

#Disable turbo
sudo wrmsr -a 0x1a0 0x4000850089

#Disable prefetchers
sudo wrmsr -a 0x1a4 0xf

#Set performance governor
sudo cpupower frequency-set -g performance

#Minimum freq
sudo cpupower frequency-set -d 2.2GHz

#Maximum freq
sudo cpupower frequency-set -u 2.2GHz

