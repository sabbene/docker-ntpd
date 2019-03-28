#!/bin/bash

ntpdate -s time.nist.gov
/usr/sbin/ntpd -d
