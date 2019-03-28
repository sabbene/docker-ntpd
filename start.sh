#!/bin/bash

ntpdate -s clock.he.net
/usr/sbin/ntpd -d
