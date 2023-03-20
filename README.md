# OpenStack Kolla Containers

## Overview

This project is simply a CI pipeline and container repository that integrates
 with the [Kolla](https://docs.openstack.org/kolla/latest) build system,
 allowing me to easily develop and run custom Kolla containers.

Currently building for OpenStack release Zed.

## Usage

Simply modify the relevant kolla-ansible role, and have it point to the
 appropriate container in this repository instead.

## OpenStack Components

<details>

<summary>Magnum</summary>

### Bug Fixes

#### Fedora CoreOS 36+ CoreDNS crash

https://review.opendev.org/c/openstack/magnum/+/869391/4

The switch to systemd-resolved in Fedora CoreOS caused a recursive loop with
 in-cluster DNS resolution. Patching the Kubelet args appropriately solves
 the problem.

#### Up-to-date CSI containers not available

The CSI driver registry in this component doesn't appear to be maintained
 any longer. Updating the script allows newer CSI versions to be used.

#### csi-attacher unable to patch volumeattachments/status

The attacher was missing the ClusterRole rule which allows it to update the
 attachment status. Adding the rule solved the issue.

### Features

#### Talos Linux driver

Currently testing a cluster orchestration driver for Talos Linux.

</details>

## License

Copyright: (c) 2023, Ryan Algar
 ([ralgar/kolla](https://github.com/ralgar/kolla))

MIT License (see LICENSE or [MIT License](https://mit-license.org/))
