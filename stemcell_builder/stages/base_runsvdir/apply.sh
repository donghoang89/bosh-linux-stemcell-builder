#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

## See https://refspecs.linuxfoundation.org/FHS_3.0/fhs/ch05s13.html
run_in_chroot $chroot "
  rm -rf /var/run
  ln -s /run /var/run
"
