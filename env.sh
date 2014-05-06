#!/bin/bash

# Run this file prior to running any of the other scripts. This will set up all the
# necessary variables.

# The directory you want copied on the remote machine
export EXPERIMENT_DIR="foo"

# Name of any random remote machine (assumes that all remote machines use the same filesystem)
export REMOTE_NAME="cms-r1-19.cms.waikato.ac.nz"
