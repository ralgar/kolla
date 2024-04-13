# OpenStack Kolla Containers

## Overview

This project is simply a CI pipeline and container namespace that leverages
 the [Kolla](https://docs.openstack.org/kolla/latest) build system, allowing
 me to easily build custom Kolla containers for my personal OpenStack cloud.

## Building a container

Builds are automatic, and are triggered by modifying files in the relevant
 component's subdirectory.

## Using a container

Simply modify the relevant kolla-ansible role, and have it point to the
 appropriate container in this namespace instead.

## License

Copyright: (c) 2024, Ryan Algar
 ([ralgar/kolla](https://github.com/ralgar/kolla))

MIT License (see LICENSE or [MIT License](https://mit-license.org/))
