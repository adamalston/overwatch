FROM prom/cloudwatch-exporter
LABEL maintainer Adam Alston
ENV AWS_ACCESS_KEY_ID=value \
    AWS_SECRET_ACCESS_KEY=value
EXPOSE 9106
