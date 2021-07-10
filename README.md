# TripleO Deployment Templates

These templates are used to deploy my home cloud environment which I use for
development purposes. While this is a development cloud, and small, it does
use all of the production characteristics ensuring that there's remote storage
and network isolation.

### Remote Storage

The cloud environment uses NFS for remote storage.

> The NFS implementation is on the backend through ZFS and is not covered by
  these deployment templates.


### Network Isolation

The cloud environment uses a multi-nic setup with VLAN tagged interfaces which
supports both IPv4 and IPv6.


### Helper Functions

The file `make-cloud.bash` is provided to make deployments simple, containing
a collection of helper functions which can ease the deployment process and
provide for some better understanding to what is actually required to run
an end to end TripleO deployment.

> To use these functions source the `make-cloud.bash` file.

###### Example execution workflow

``` shell
$ pre-build
$ deploy-undercloud
$ get-overcloud-images
$ network-provision
$ baremetal-import; sleep 5
$ baremetal-inspect; sleep 5
$ baremetal-provision
$ deploy-overcloud
$ post-deploy
```
