#
# ElasticSearch Dockerfile
#

# Pull base image.
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

# vim: set ts=4 sw=4 sts=4 ai et :
