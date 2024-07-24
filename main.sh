#!/bin/bash

cp ./key.pub ~/.ssh

cd ~/.ssh

cat key.pub >> authorized_keys

chmod 700 ~
chmod 700 ~/.ssh
chmod 600 ~/.ssh/authorized_keys
