weka-gnu-parallel
=================

Scripts for running Weka experiments over SSH using GNU Parallel

This consists of three main scripts: `wgp-sshsetup`, which is for setting up a private/public key pair for the local and remote machines. **This is required by GNU Parallel.** `wgp-copyfiles` is for copying your experiment folder to remote machine, and `wgp-runexp` runs the experiment.

In general, how this works is that you have an "experiment folder", i.e. `foo`. This will contain things such as the training file for the experiment (i.e. `foo/weather.nominal.arff`), the experiment script (i.e. `foo/weka-j48-2params.sh`), a file with parameters to be passed to the script (i.e. `foo/param-input.txt`), and `foo/env.sh` (which is required by `wgp-runexp` and should be sourced at the very start by running `source foo/env.sh`).

After sourcing `foo/env.sh`, we run `wgp-copyfiles foo` which will automatically copy the folder to a remote machine. I say "a remote machine" because I'm assuming that if you were running this experiment in parallel over several remote machines, you only need to copy the files to one of them (since there is a shared filesystem). If that is not the case then you might have to do some extra work to get things up and running (sorry!).

Then we run `wgp-runexp foo/weka-j48-2params.sh > RESULTS.txt`. What this does is that it invokes GNU Parallel, which will run `foo/weka-j48-2params.sh` on the remote machines in parallel. Now this is where `param-input.txt` comes in. If you look at `param-input.txt` you'll see that the first two lines are:

```
weather.nominal.arff 0.25 2
weather.nominal.arff 0.25 4
...
...
```

This means that the script will be run in parallel like so:

```
weka-j48-2params.sh weather.nominal.arff 0.25 2
weka-j48-2params.sh weather.nominal.arff 0.25 4
...
...
```


