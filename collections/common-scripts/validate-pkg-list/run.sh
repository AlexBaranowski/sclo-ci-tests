#!/bin/bash

# Caution: This is common script that is shared by more SCLS.
# If you need to do changes related to this particular collection,
# create a copy of this file instead of symlink.

THISDIR=$(dirname ${BASH_SOURCE[0]})
source ${THISDIR}/../include.sh

for scl in $INSTALL_SCLS ; do
  ${THISDIR}/../../../validate-pkg-list/run.sh $scl 7
done
