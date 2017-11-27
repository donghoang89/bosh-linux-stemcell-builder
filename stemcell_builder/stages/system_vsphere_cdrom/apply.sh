#!/usr/bin/env bash

set -e

base_dir=$(readlink -nf $(dirname $0)/../..)
source $base_dir/lib/prelude_apply.bash

# Disable cdrom lock when it is used, otherwise vsphere pops up questions in API
## Remove this stage's config file, we don't need to persist values when
## we're only doing a `cp`
cp $assets_dir/60-cdrom_id.rules $chroot/etc/udev/rules.d/60-cdrom_id.rules
