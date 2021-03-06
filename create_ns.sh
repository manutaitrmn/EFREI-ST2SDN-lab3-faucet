#!/bin/bash

source as_ns.sh

create_ns() {
	NAME=$1
	IP=$2
	NETNS=faucet-${NAME}
	sudo ip netns add ${NETNS}
	sudo ip link add dev veth-${NAME} type veth peer name veth0 netns ${NETNS}
	sudo ip link set dev veth-${NAME} up
	as_ns ${NAME} ip link set dev lo up
	[ -n "${IP}" ] && as_ns ${NAME} ip addr add dev veth0 ${IP}
	as_ns ${NAME} ip link set dev veth0 up
}