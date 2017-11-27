#!/usr/bin/env bash

set -e

## This doesn't seem necessary, as we are not using any helper methods and do not require the
## `source $1` line that is in prelude_config. All other behavior is method-scoped or duplicated elsewhere
base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_config.bash
