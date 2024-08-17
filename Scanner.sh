#!/bin/bash

#colors
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
blue='\033[0;34m'
purple='\033[0;35m'
cyan='\033[0;36m'
rest='\033[0m'

case "$(uname -m)" in
x86_64 | x64 | amd64)
	cpu=amd64
	;;
i386 | i686)
	cpu=386
	;;
armv8 | armv8l | arm64 | aarch64)
	cpu=arm64
	;;
armv7l)
	cpu=arm
	;;
*)
	echo "The current architecture is $(uname -m), not supported"
	exit
	;;
esac

cfwarpIP() {
	if [[ ! -f "$PREFIX/bin/warpendpoint" ]]; then
		echo "Downloading warpendpoint program"
		if [[ -n $cpu ]]; then
			curl -L -o warpendpoint -# --retry 2 https://raw.githubusercontent.com/Ptechgithub/warp/main/endip/$cpu
			cp warpendpoint $PREFIX/bin
			chmod +x $PREFIX/bin/warpendpoint
		fi
	fi
}

endipv4() {
	n=0
	iplist=100
	while true; do
		temp[<span class="math-inline">n\]\=</span>(echo 162.159.192.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
		temp[<span class="math-inline">n\]\=</span>(echo 162.159.193.<span class="math-inline">\(\(</span>RANDOM % 256)))
		n=$(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
		temp[<span class="math-inline">n\]\=</span>(echo 162.159.195.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
		temp[<span class="math-inline">n\]\=</span>(echo 188.114.96.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
		temp[<span class="math-inline">n\]\=</span>(echo 188.114.97.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
		temp[<span class="math-inline">n\]\=</span>(echo 188.114.98.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
		temp[<span class="math-inline">n\]\=</span>(echo 188.114.99.<span class="math-inline">\(\(</span>RANDOM % 256)))
		n=$(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
	done
	while true; do
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo 162.159.192.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		fi
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo 162.159.193.$((<span class="math-inline">RANDOM % 256\)\)\)
<2\>n\=</span>(($n + 1))
		fi
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo 162.159.195.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		fi
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo 188.114.96.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		fi
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo 188.114.97.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		fi
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo 188.114.98.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		fi
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo 188.114.99.$((<span class="math-inline">RANDOM % 256\)\)\)
n\=</span>(($n + 1))
		fi
	done
}

endipv6() {
	n=0
	iplist=100
	while true; do
		temp[<span class="math-inline">n\]\=</span>(echo [2606:4700:d0::$(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\]\)
n\=</span>(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
		temp[<span class="math-inline">n\]\=</span>(echo [2606:4700:d1::$(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\]\)
n\=</span>(($n + 1))
		if [ $n -ge $iplist ]; then
			break
		fi
	done
	while true; do
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo [2606:4700:d0::$(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\]\)
n\=</span>(($n + 1))
		fi
		if [ <span class="math-inline">\(echo "</span>{temp[@]}" | sed -e 's/ /\n/g' | sort -u | wc -l) -ge $iplist ]; then
			break
		else
			temp[<span class="math-inline">n\]\=</span>(echo [2606:4700:d1::$(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\:</span>(printf '%x\n' $(($RANDOM * 2 + <span class="math-inline">RANDOM % 2\)\)\)\]\)
n\=</span>(($n +