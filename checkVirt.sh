#!/bin/bash 

# Drake
# script to setup virtualenv and/or activate it
# Run by using: source <path_to_script>/checkVirtualEnv.sh

MYSRCDIR=$( cd -P $(dirname ${BASH_SOURCE[0]}); echo $PWD )
export VIRTDIR=$MYSRCDIR/PY27

if [ ! -d $MYSRCDIR/PY27 ]; then

    /usr/local/bin/virtualenv $VIRTDIR
    source $VIRTDIR/bin/activate
    pip install -r $MYSRCDIR/requirements.txt
fi

source $VIRTDIR/bin/activate
unset MYSRCDIR
