#!/bin/bash

ip route del default via 192.168.10.1
ip route add default via 192.168.10.254


rm -f /var/lib/kea/dhcp4.kea-dhcp-leases.csv

rm -f /var/run/kea/dhcp4.kea-dhcp4.pid
rm -f /var/run/kea-dhcp-ddns.kea-dhcp-ddns.pid

kea-dhcp4-ddns -c /etc/kea/ddns.conf -d &
kea-dhcp4 -c /etc/kea/dhcp4.conf -d
