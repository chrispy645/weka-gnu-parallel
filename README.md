weka-gnu-parallel
=================

Scripts for running Weka experiments over SSH using GNU Parallel

This consists of three main scripts: `wgp-sshsetup`, which is for setting up a private/public key pair for the local and remote machines. This is required by GNU Parallel. `wgp-copyfiles` is for copying your experiment folder to remote machine, and `wgp-runexp` runs the experiment.

In general, how this works is that you have an "experiment folder", i.e. `foo`. This will contain things such as the training file for the experiment, the experiment script, `param-input.txt` (parameters to pass to the experiment script), and `env.sh` (which is required by `wgp-runexp` and should be sourced at the very start).

After sourcing `foo/env.sh`, we run `wgp-copyfiles foo` which will automatically copy the folder to the remote machines (this script assumes that there is a shared filesystem on the remote machines so you only have to copy it to one), then we run `wgp-runexp foo/weka-j48-2params.sh`. What this does is that it invokes GNU Parallel, which will run `foo/weka-j48-2params.sh` on the remote machines in parallel by invoking the script with different parameters (which are taken from `foo/param-input.txt`). As experiments are done their stdout and stderr will be in a folder on the local machine called `results`.
