#!/bin/bash

ssh-keygen
ssh-copy-id -i ~/.ssh/id_rsa.pub $REMOTE_NAME
