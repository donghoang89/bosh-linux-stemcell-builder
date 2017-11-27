#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

# the tar_base_os_image stage creates a tar ball of the chroot with no enclosing directory
sudo tar zxf $os_image_tgz -C $chroot

# ubuntu trusty+ needs /etc/resolv.conf to be a symlink, so overwrite the file
# instead of copying it to preserve the link
## As stated in another stage, this doesn't seem true.
cat /etc/resolv.conf > $chroot/etc/resolv.conf
