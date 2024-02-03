
#!/bin/bash
sudo apt-get update
sudo apt-get install docker.io -y
sudo usermod -aG docker kato  # Assuming the user is 'kato'
newgrp docker
sudo chmod 777 /var/run/docker.sock

# Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# Enable and start Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Check Docker service status
sudo systemctl status docker
