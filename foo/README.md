This is an example project. What this project does is do a grid search on two parameters of the J48 classifier.

Here is a run-down of the files:

* `env.sh` - this is what some of the `wgp-*` scripts use. `WGP_REMOTE_NAME` is the address of one of the remote servers you want to run your experiment on. I say "one of" because it assumes that if you were running on multiple servers remotely that they share the same filesystem. There is also a `WGP_MAXPROC` which is the maximum number of processes any remote machine can spawn.

* `param-input.txt` - these are the parameters that are passed into script (3 parameters per line), `weka-j48-2params.sh`. Here we have 12 lines, so GNU Parallel will run 12 experiments, each experiment being run on the 3 parameters of that line.

* `sshlogins.txt` - addresses to all the remote machines you wish to use. You can see these lines are prefixed with `\4`, which indicates how many cores each machine has. This is detected by GNU Parallel if it happens to be installed on the remote machines.

* `weka-j48-2params.sh` - the actual experiment script. Confusingly, when GNU Parallel runs this script remotely, the working directory is not the folder it was run in, hence why in the script we have the line `cd $(dirname ${WGP_SCRIPT})`. Apart from this, things should be pretty straightforward.
