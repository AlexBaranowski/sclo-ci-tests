#!/bin/bash

if [ "$#" -ne 1 ] ; then
  echo "Usage: `basename $0` <dir-with-VagrantFile>"
  exit 1
fi

cd $1

set -xe

vagrant up
vagrant ssh -c 'cd /vagrant; sudo env "PATH=$PATH" ./runtests.sh p_ruby'
