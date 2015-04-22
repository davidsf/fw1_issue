#!/bin/sh

HOST=localhost

launch() {
  curl http://$HOST/index.cfm/test/one >>one.txt &
  curl http://$HOST/index.cfm/test/two >>two.txt &
}

a=1

while [ $a -le 20 ]; do
  launch
  a=`expr $a + 1`
done
