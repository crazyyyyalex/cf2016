#!/bin/sh

config=/tmp/config/cf11.tar.gz
target=/opt/cf2016

if [ ! -f $config ]
then
	echo "No configuration package found at $config, skipping"
	exit 0
fi

echo "Extracting $config to $target..."
cd /tmp/config
tar vxzf $config -C $target
