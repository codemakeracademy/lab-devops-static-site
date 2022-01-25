FROM jenkins/jenkins:lts
USER root
RUN curl -sSL https://get.docker.com/ | sh
RUN usermod -aG docker jenkins
RUN dockerd-rootless-setuptool.sh install
USER jenkins