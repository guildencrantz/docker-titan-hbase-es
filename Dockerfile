#
# Base Java7 Centos6 Dockerfile
#

# Pull base image
FROM centos:centos7

# Install standard utils
RUN yum -y install openssh-server tar unzip which

# Setup openssh (but don't start it)
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && \
    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
RUN echo 'root:insecure' | chpasswd

# Install Java7
RUN curl -OL 'http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.rpm' \
         -H 'Cookie: oraclelicense=accept-securebackup-cookie'
RUN rpm -i jdk-7u51-linux-x64.rpm
RUN rm jdk-7u51-linux-x64.rpm

RUN echo 'export JAVA_HOME=/usr/java/jdk1.7.0_51/' >> ~/.bashrc

CMD ["echo", "base built"]

# vim: set ts=4 sw=4 sts=4 ai et :
