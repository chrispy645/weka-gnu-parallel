#!/bin/bash

# Run this file prior to running any of the other scripts. This will set up all the
# necessary variables.

# The folder name of your experiment (i.e. foo)
export EXPERIMENT_DIR="foo"

# The shell script to run on the remote machine(s)
# (MUST BE IN THE FOLDER CALLED local)
export EXPERIMENT_SCRIPT="weka-j48-2param.sh"

# Name of any random remote machine (assumes that all remote machines use the same filesystem)
export REMOTE_NAME="cms-r1-19.cms.waikato.ac.nz"
