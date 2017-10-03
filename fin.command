#!/bin/sh

cd /Users/sandro/dev/workspace/fin

pid="tmp/pids/server.pid"

if [ -e "$pid" ]
then
  echo "Killing PID: $(cat $pid)"
  kill -TERM $(cat $pid)
fi

rails server -b 0.0.0.0 -p 4000 -e production
