#!/bin/bash -eux

SUDO_F=/etc/sudoers.d/10_vagrant

cat > $SUDO_F <<EOF
Defaults:vagrant !requiretty
Defaults env_keep+=SSH_AUTH_SOCK
%vagrant ALL=(ALL) NOPASSWD: ALL
EOF

chmod 0440 $SUDO_F
