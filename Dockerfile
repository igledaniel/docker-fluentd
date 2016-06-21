FROM fluent/fluentd

RUN fluent-gem install -q fluent-plugin-redis

USER root
RUN mkdir -p /fluentd/buffer && \
    chown fluent:fluent /fluentd/buffer

USER fluent
