FROM fluent/fluentd

RUN fluent-gem install -q fluent-plugin-redis-store

USER root
RUN mkdir -p /fluentd/buffer && \
    chown fluent:fluent /fluentd/buffer

USER fluent
