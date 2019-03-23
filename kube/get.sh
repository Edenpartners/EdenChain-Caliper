#!/bin/bash

gp() { kubectl get po | grep $1 |grep Running | awk '{print $1}' ; }

rm -rf crypto-config
kubectl cp $(gp nfs):/exports/crypto-config ./crypto-config
kubectl cp $(gp nfs):/exports/channel1.tx .
