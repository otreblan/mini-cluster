#!/usr/bin/env bash

# No olvides sshfs

hosts=(
	10.42.0.22
	10.42.0.67
	10.42.0.172
	10.42.0.206
	10.42.0.225
	10.42.0.239
)

HOSTFILE="$(mktemp)"

#for h in "${hosts[@]}"
#do
#	ssh "$h" "sshfs master:/home/alarm/N-Body /home/alarm/N-Body"
#done

hosts+=(localhost)

for h in "${hosts[@]}"
do
	printf "%s slots=1\n" "$h" >> "$HOSTFILE"
done

mpirun --hostfile "$HOSTFILE" ./cpu-4th | tee cluster-log.txt

# nmap 10.42.0.44/24 | sed "s/\(.*\)/# \1/g" >> run.sh

# nmap 10.42.0.44/24 | sed "s/\(.*\)/# \1/g" >> run.sh
# Starting Nmap 7.93 ( https://nmap.org ) at 2023-11-24 23:06 GMT
# Nmap scan report for 10.42.0.1
# Host is up (0.0019s latency).
# Not shown: 997 closed tcp ports (conn-refused)
# PORT     STATE SERVICE
# 22/tcp   open  ssh
# 53/tcp   open  domain
# 9091/tcp open  xmltec-xmlmail
#
# Nmap scan report for 10.42.0.22
# Host is up (0.0039s latency).
# Not shown: 999 closed tcp ports (conn-refused)
# PORT   STATE SERVICE
# 22/tcp open  ssh
#
# Nmap scan report for master (10.42.0.44)
# Host is up (0.0035s latency).
# Not shown: 999 closed tcp ports (conn-refused)
# PORT   STATE SERVICE
# 22/tcp open  ssh
#
# Nmap scan report for 10.42.0.67
# Host is up (0.0018s latency).
# Not shown: 999 closed tcp ports (conn-refused)
# PORT   STATE SERVICE
# 22/tcp open  ssh
#
# Nmap scan report for 10.42.0.172
# Host is up (0.0025s latency).
# Not shown: 999 closed tcp ports (conn-refused)
# PORT   STATE SERVICE
# 22/tcp open  ssh
#
# Nmap scan report for slave03 (10.42.0.206)
# Host is up (0.0039s latency).
# Not shown: 999 closed tcp ports (conn-refused)
# PORT   STATE SERVICE
# 22/tcp open  ssh
#
# Nmap scan report for 10.42.0.225
# Host is up (0.0038s latency).
# Not shown: 999 closed tcp ports (conn-refused)
# PORT   STATE SERVICE
# 22/tcp open  ssh
#
# Nmap scan report for 10.42.0.239
# Host is up (0.0027s latency).
# Not shown: 999 closed tcp ports (conn-refused)
# PORT   STATE SERVICE
# 22/tcp open  ssh
#
# Nmap done: 256 IP addresses (8 hosts up) scanned in 3.90 seconds
