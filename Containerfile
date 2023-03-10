FROM quay.io/openstack.kolla/magnum-conductor:zed-rocky-9

# https://review.opendev.org/c/openstack/magnum/+/869391/4
COPY files/configure-kubernetes-master.sh /magnum/build/lib/magnum/drivers/common/templates/kubernetes/fragments
COPY files/configure-kubernetes-minion.sh /magnum/build/lib/magnum/drivers/common/templates/kubernetes/fragments

# Update Cinder CSI
COPY files/enable-cinder-csi.sh /magnum/build/lib/magnum/drivers/common/templates/kubernetes/fragments
