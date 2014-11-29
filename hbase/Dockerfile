#
# Hbase Dockerfile
#

# Pull base image
FROM titan_base:latest

ENV HBASE_VERSION 0.94.24
ENV JAVA_HOME /usr/java/default

# install hbase master
RUN curl -OL http://mirror.olnevhost.net/pub/apache/hbase/hbase-$HBASE_VERSION/hbase-$HBASE_VERSION.tar.gz
RUN tar zvxf hbase-$HBASE_VERSION.tar.gz

ADD run.sh /hbase-$HBASE_VERSION/bin/LOCAL-run.sh
CMD ["/hbase-0.94.24/bin/LOCAL-run.sh"]

#CMD ["/usr/sbin/sshd", "-D"]
#EXPOSE 22
#
## vim: set ts=4 sw=4 sts=4 ai et :
