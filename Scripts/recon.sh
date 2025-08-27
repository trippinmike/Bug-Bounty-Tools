#!/usr/bin/env bash

nmap -Pn $1
sleep 2
nslookup $1
sleep 2
dig $1
sleep 2
gobuster dir http://$1 -w /path/to/wordlist/file.txt
