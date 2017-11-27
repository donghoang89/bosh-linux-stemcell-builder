#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash
source $base_dir/lib/prelude_bosh.bash

## TODO: how does this actually work under systemd
cp $dir/assets/sysstat $chroot/etc/default/sysstat
