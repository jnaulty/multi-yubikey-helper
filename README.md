# Multiple Yubikey Helper

This utility helps those who carry multiple yubikeys with the same subkeys.  
It removes the `.gnupg/private-keys-v1.d` directory contents, and runs `gpg --card-status`, which updates the directory with the private key (stubs) from the yubikey.
