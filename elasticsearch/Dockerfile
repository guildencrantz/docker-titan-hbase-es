#
# ElasticSearch Dockerfile
#

# Pull base image.
#FROM centos:centos6
FROM titan_base:latest

ENV ES_PKG_NAME elasticsearch-1.3.2

# Install ElasticSearch.
RUN \
  cd / && \
  curl -OL https://download.elasticsearch.org/elasticsearch/elasticsearch/$ES_PKG_NAME.tar.gz && \
  tar xvzf $ES_PKG_NAME.tar.gz && \
  rm -f $ES_PKG_NAME.tar.gz && \
  mv /$ES_PKG_NAME /elasticsearch

# Install the head plugin
RUN /elasticsearch/bin/plugin -install mobz/elasticsearch-head

# Define mountable directories.
VOLUME ["/data"]

# Mount elasticsearch.yml config
ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["/elasticsearch/bin/elasticsearch"]

# Expose ports.
#   - 9200: HTTP
#   - 9300: transport
EXPOSE 9200
EXPOSE 9300

# Install and set up sshd
#RUN yum -y install openssh-server
#RUN \
#    ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key && \
#    ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key && \
#    sed -i "s/#UsePrivilegeSeparation.*/UsePrivilegeSeparation no/g" /etc/ssh/sshd_config && \
#    sed -i "s/UsePAM.*/UsePAM no/g" /etc/ssh/sshd_config
#RUN echo 'root:screencast' | chpasswd
#CMD ["/usr/sbin/sshd", "-D"]
#EXPOSE 22

# vim: set ts=4 sw=4 sts=4 ai et :
