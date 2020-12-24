#!/bin/bash

PIDFILE='/home/ubuntu/.board/node.pid'

LAST_PID=`cat ${PIDFILE}`
CHECK_RUNNING=`ps -ef | grep node | awk '{print $2}' | grep ${LAST_PID} | wc -l`
if [ CHECK_RUNNING = 1 ]; then
  kill -9 LAST_PID
  echo "kill pid : ${LAST_PID}"
else
  echo "Not running"
fi;

