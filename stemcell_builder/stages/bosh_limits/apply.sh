#!/usr/bin/env bash

set -ex

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash
source $base_dir/lib/prelude_bosh.bash

## This hard-limits the core file size to 0 for all users including root.
## Core files (or dumps) contain a process's address space when the process terminates
## unexpectedly: https://wiki.archlinux.org/index.php/Core_dump
echo '*               hard    core            0' >> $chroot/etc/security/limits.conf
