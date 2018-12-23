#!/bin/bash
# script to be run by udev rule to remove private key stubs

user=replace_user
su $user -c "/bin/rm -f /home/${user}/.gnupg/private-keys-v1.d/*.key"
su $user -c "/usr/bin/gpg2 --card-status"


