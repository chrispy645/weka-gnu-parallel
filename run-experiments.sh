#!/bin/bash

parallel -k \
-a param-input.txt \
--colsep ' ' \
--no-notice \
--sshloginfile sshlogins.txt \
--env EXPERIMENT_DIR \
--results results \
'foo/weka-j48-2params.sh {1} {2} {3}'
