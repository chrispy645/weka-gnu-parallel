#!/bin/bash

if [ -z $EXPERIMENT_DIR ] || [ -z $REMOTE_NAME ]; then
	echo "Have you sourced your project's env.sh file?"
	exit 1
fi

# Copies experimental directory to remote directory.

echo "Copying directory: "$EXPERIMENT_DIR
echo "To: "$REMOTE_NAME:$EXPERIMENT_DIR

scp -r $EXPERIMENT_DIR/remote $REMOTE_NAME:$EXPERIMENT_DIR
