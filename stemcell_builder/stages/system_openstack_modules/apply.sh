#!/usr/bin/env bash

set -e

## Collapse this and aws, they're the same.
## Consider collapsing google as well, it only has 1 additional module
base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

echo "acpiphp" >> $chroot/etc/modules
