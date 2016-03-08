#!/bin/bash
#Copyright 2015 Acumen Solutions, Inc.
theIp=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1  -d'/')

sudo nohup sh /opt/app/pentaho/data-integration/carte.sh $theIp 8181 & 

