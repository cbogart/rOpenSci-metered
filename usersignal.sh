#!/bin/bash

term_handler() {
  killall -SIGUSR1 rsession
  sleep 1;
  exit 143;
}

trap term_handler 1 2 3 6 15

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf  &

while true
do
   tail -f /dev/null & wait ${!}
done
