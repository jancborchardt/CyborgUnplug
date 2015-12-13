#!/bin/bash
# Copyright (C) 2015 Julian Oliver
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,                                                                                              
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>. 

SCRIPTS=/root/scripts
BINPATH=/usr/sbin/
CONFIG=/www/config
POLLTIME=15
ETH=eth0.2 # WAN interface
VPN=89.238.81.42

while true;
	do
		PING=$(ping -c 1 plugunplug.net|grep "1 packets received")
		if [[ ! -z $PING ]]; then
            echo online > $CONFIG/networkstate
		else
			echo offline > $CONFIG/networkstate
		fi

		sleep $POLLTIME

	done
			