#!/usr/bin/env bash
#

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash
source $base_dir/lib/prelude_bosh.bash

## We should collapse the apply and config scripts for gcscli and use a tmpdir instead.
cd $assets_dir/gcscli
mv gcscli $chroot/var/vcap/bosh/bin/bosh-blobstore-gcs
chmod +x $chroot/var/vcap/bosh/bin/bosh-blobstore-gcs
