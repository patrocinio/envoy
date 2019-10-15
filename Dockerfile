FROM envoyproxy/envoy:latest

RUN apt-get update && \
    apt-get install gettext -y

COPY envoy.yaml.tmpl /tmpl/envoy.yaml.tmpl
COPY docker-entrypoint.sh /

RUN chmod 500 /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
