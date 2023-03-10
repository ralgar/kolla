FROM quay.io/openstack.kolla/magnum-conductor:zed-rocky-9

ENV FRAGMENTS=/var/lib/kolla/venv/lib/python3.9/site-packages/magnum/drivers/common/templates/kubernetes/fragments

# https://review.opendev.org/c/openstack/magnum/+/869391/4
COPY files/configure-kubernetes-master.sh $FRAGMENTS
COPY files/configure-kubernetes-minion.sh $FRAGMENTS

# Update Cinder CSI
COPY files/enable-cinder-csi.sh $FRAGMENTS
