FROM jenkins/jenkins:lts
USER root
RUN apt-get update -y
RUN apt-get install -y apt-utils
RUN apt-get install -y uidmap
RUN curl -sSL https://get.docker.com/ | sh
RUN apt-get install -y docker-ce-rootless-extras
RUN usermod -aG docker jenkins
USER jenkins
RUN dockerd-rootless-setuptool.sh install --skip-iptables
