
configure:
	sed -e 's/replace_user/${USER}/' insert-yubi.sh.template > insert-yubi.sh
	chmod +x insert-yubi.sh
install:
	sudo cp 69.yubikey.rules /etc/udev/rules.d/
	sudo cp insert-yubi.sh /usr/local/bin/
	sudo udevadm control -R
