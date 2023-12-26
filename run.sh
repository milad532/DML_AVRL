#!/bin/bash

cleanup() {
    pkill -f "/CarlaUE4"  
}

trap cleanup EXIT 

pkill -f "/CarlaUE4"         
bash run/train_rl.sh || true         
pkill -f "/CarlaUE4"        
