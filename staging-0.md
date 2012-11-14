Staging Script Level 0

apt-get update
apt-get upgrade -V --yes --force-yes 
apt-get install vim git-core screen parted curl ufw

update-alternatives --set editor  /usr/bin/vim.basic

sed -i 's/%sudo ALL=(ALL:ALL) ALL/%sudo  ALL=(ALL) NOPASSWD:ALL/' /etc/sudoers 

useradd -s /bin/bash -m -G sudo letterj
mkdir -p /home/letterj/.ssh
chown letterj:letterj /home/letterj/.ssh
chmod 700 /home/letterj.ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAsiiYYkHhrXVucb5CGKHnfdX1SIshjDCCK1keSUr7YFkNyAjDRLANnpQn/b7M+2FdOeWp9rr/qk+GGamGU/g0oZnHzFirN6HQpvtd9Q+V9Oeypino0+cJNsBTW/n1XNvZsy1hamwKE/OndmW/Pf8pOnsgzLOn7Wobzk0kQPUfwoJff7m+iaq/lxr0BixAA9Srl3m1ccybksREwlIrfaqs0Oeh2gM8K4jKvwYG+xwLB8kZ3qo9wZ08PU0rHOQtR9vyRjyIRON1RXrZzjsOktKTf3fH/WqZXUSfFw05gjssonMEnWZOO+n1RItObIFwhyOwZHOeiwRGj2kFd+myUGeLAw== /Users/letterj/.ssh/id_rsa
ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEAybFE1Jw4IWfGfac52l5IbzDyEoC8OOekgOVI94j4jjHvYP0ipCXSmwBq6bjKoNjgllkfiXZSqXtTF+RFWM9A9iGZK0cAzHrd0lOZRQzWq4Xns+ILImp0eLzxuLWPpTkL3uEnY/e1CMjBu808yX6gRMp9xteTYqavEqsckwz6ChW0zLabSbHC09SPAoUk9EL5I+eZR4gCVTBNCwVyJ0K3BK3GK1PpFoPG4tnlmb84qyG1yGh23VbaTz7uQ2FQoJWGhzrRQlM61gA91pTBTTk0TIOnF+gFA74ePMDZxM7yYF7gl+8nDQuZVorWEqWu6tV7rjtNXOn6WOdPZIaHZxzAYQ== /Users/letterj/.ssh/id_rsa_racklabs2" >> /home/letterj/.ssh/authorized_keys
chmod 600 /home/letterj/.ssh/authorized_keys

ufw allow 22
ufw enable
