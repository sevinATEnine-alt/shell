#!/bin/bash

cp ./key.pub ~/.ssh

cd ~/.ssh

cat key.pub >> authorized_keys

chmod 700 /home/~
chmod 700 /home/~/.ssh
chmod 600 /home/~/.ssh/authorized_keys
