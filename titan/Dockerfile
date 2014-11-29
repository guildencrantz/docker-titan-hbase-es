#
# ElasticSearch Dockerfile
#

# Pull base image.
FROM titan_base:latest

ENV TITAN_VERSION 0.5.2
ENV HBASE_VERSION 1

ENV TITAN_NAME titan-$TITAN_VERSION-hadoop$HBASE_VERSION

RUN curl -OL http://s3.thinkaurelius.com/downloads/titan/$TITAN_NAME.zip && \
    unzip $TITAN_NAME -d / && \
    rm $TITAN_NAME.zip

#CMD ["/usr/sbin/sshd", "-D"]
EXPOSE 22

ADD LOCAL-rexster-hbase-es.xml /$TITAN_NAME/conf/LOCAL-rexster-hbase-es.xml

CMD /$TITAN_NAME/bin/rexster.sh -s -c ../conf/LOCAL-rexster-hbase-es.xml

# vim: set ts=4 sw=4 sts=4 ai et :
