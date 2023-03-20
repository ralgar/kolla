# kolla-magnum-fixes

## Overview

This project builds minor fixes into the existing magnum-conductor container
 for [Kolla](https://docs.openstack.org/kolla/latest) release Zed.

### Fixes

#### Fedora CoreOS 36+ CoreDNS crash

https://review.opendev.org/c/openstack/magnum/+/869391/4

The switch to systemd-resolved in Fedora CoreOS caused a recursive loop with
 in-cluster DNS resolution. Patching the Kubelet args appropriately solves
 the problem.

#### Up-to-date CSI containers not available

The CSI driver repository in this component doesn't appear to be maintained
 any longer. Updating the script allows newer CSI versions to be used.

#### csi-attacher unable to patch volumeattachments/status

The attacher was missing the ClusterRole rule which allows it to update the
 attachment status. Adding the rule solved the issue.

### Features

#### Talos Linux driver

Currently testing a cluster orchestration driver for Talos Linux.

## Usage

Simply modify the kolla-ansible magnum role, and have it point to the
 container in this repository instead.

## License

Copyright: (c) 2023, Ryan Algar
 ([ralgar/kolla-magnum-fixes](https://gitlab.com/ralgar/kolla-magnum-fixes))

MIT License (see LICENSE or [MIT License](https://mit-license.org/))
