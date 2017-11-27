#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

## Do the infrastructures that use this stage still need it?
sed "/^ *PasswordAuthentication/d" -i $chroot/etc/ssh/sshd_config
echo 'PasswordAuthentication yes' >> $chroot/etc/ssh/sshd_config
