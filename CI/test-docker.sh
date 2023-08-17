#!/bin/bash
RESULT="`wget -qO- http://127.0.0.1:8080/healthz`"
EXPECTED="healthy"
if [ "$RESULT" == "$EXPECTED" ];
then
echo "healthy"
else
echo "not healthy"
exit 1
fi
