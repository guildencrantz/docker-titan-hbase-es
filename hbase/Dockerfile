#
# Hbase Dockerfile
#

# Pull base image
FROM titan_base:latest

ENV HBASE_VERSION 0.94.24

# install hbase master
RUN curl -L http://archive.apache.org/dist/hbase/hbase-$HBASE_VERSION/hbase-$HBASE_VERSION.tar.gz | \
    tar zvx --null && \
    echo "export HBASE_HOME=/hbase-$HBASE_VERSION" >> ~/.bashrc

ADD run.sh /hbase-$HBASE_VERSION/bin/LOCAL-run.sh

CMD ["/hbase-0.94.24/bin/LOCAL-run.sh"]

# vim: set ts=4 sw=4 sts=4 ai et :
