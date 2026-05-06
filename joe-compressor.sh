#!/usr/bin/env bash
echo 'You are currently using Joe-compressor v0.0.1'

if [ $# -lt 2 ]; then
	echo -e "\033[91mERROR: Too few arguments\033[0m">&2
	exit 1
elif [ $# -gt 2 ]; then
	echo -e "\033[91mERROR: Too many arguments\033[0m">&2
	exit 1
fi

arg=$1
case $arg in
	-c)
		echo -e "\033[93mCompressing...\033[0m"
		zip -r -q "$2".zip "$2"
		echo -e "\033[92mCompressed successfully\033[0m"
		;;
	-x)
		echo -e "\033[93mExtracting...\033[0m"
		unzip -q "$2"
		echo -e "\033[92mExtracted successfully\033[0m"
		;;
	*)
		echo -e "\033[91mERROR: Unknown argument\033[0m">&2
		exit 1
esac
