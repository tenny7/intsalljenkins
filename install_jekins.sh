 sudo apt-get update
 sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
 sudo apt-add-repository 'deb https://apt.dockerproject.org/repo ubuntu-xenial main'
 sudo apt-get update
 sudo apt-get install -y docker-engine
 sudo systemctl enable docker
 sudo mkdir -p /var/jenkins_home
 sudo chown -R 1000:1000 /var/jenkins_home/
 docker run -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home --name jenkins -d jenkins/jenkins:lts
 