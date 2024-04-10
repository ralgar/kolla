# OpenStack Kolla Containers

## Overview

This project is simply a CI pipeline and container namespace that leverages
 the [Kolla](https://docs.openstack.org/kolla/latest) build system, allowing
 me to easily build custom Kolla containers.

## Building a container

1. Go to **Actions >> Workflows >> Build <container-name> >> Run workflow**.

1. Enter the remote branch to build from.

## Using a container

Simply modify the relevant kolla-ansible role, and have it point to the
 appropriate container in this namespace instead.

## License

Copyright: (c) 2024, Ryan Algar
 ([ralgar/kolla](https://github.com/ralgar/kolla))

MIT License (see LICENSE or [MIT License](https://mit-license.org/))
