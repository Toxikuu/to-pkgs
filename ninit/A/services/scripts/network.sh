#!/bin/sh

IP="192.168.1.88/24"
GATE="192.168.1.1"
CARD="enp63s0"

ip link set up dev $CARD
