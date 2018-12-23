# Multiple Yubikey Helper

This utility helps those who carry multiple yubikeys with the same subkeys.  
It removes the `.gnupg/private-keys-v1.d` directory contents, and runs `gpg --card-status`, which updates the directory with the private key (stubs) from the yubikey.


## Setting Up

1. Run `make configure`  
Right now, this just `sed`'s the current user's $USER variable to the `inser-yubi.sh` script.
2. Run `make install`  
This copies the udev rule _and_ copies `insert-yubi.sh` to `/usr/local/bin`
