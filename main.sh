#!/bin/bash

cp ./key.pub ~/.ssh

cd ~/.ssh

cat key.pub >> authorized_keys

chmod 700 ~
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys

curl "http://10.0.0.26/host/$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1')"
