#!/bin/sh
  
# Copyright (C) 2020 Sandeep Poddar
#
# License: BSD

srcdir="${srcdir:-.}"

echo "***********************************************"
echo "This test will use a radius server on localhost"
echo "and which can be executed with run-server.sh   "
echo "***********************************************"

if test -z "${SERVER_IP}";then
        echo "the variable SERVER_IP is not defined"
        exit 77
fi

../src/radembedded_chap ${SERVER_IP}
if test $? != 0;then
        echo "Error in Radembedded_chap handling"
        exit 1
fi

exit 0
