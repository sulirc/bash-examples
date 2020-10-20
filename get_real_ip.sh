#!/bin/bash

REAL_IP=$(ifconfig | grep -oE 'inet.*netmask' | grep -oE '(\d+\.){3}\d+' | sed -n 2p)
echo $REAL_IP | pbcopy
echo "Real IP address $REAL_IP"