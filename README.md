# Overwatch

Fast deploy stack with Alertmanager, Cloudwatch-Exporter, Grafana, Prometheus.

## Configure your environment

Cloudwatch-Exporter
Change the value below on **_cloudwatch-exporter.dockerfile_** to your AWS key and secret.

```
ENV AWS_ACCESS_KEY_ID=value \
    AWS_SECRET_ACCESS_KEY=value
```

## Browser Access

Prometheus\
http://localhost:9090

Alertmanager\
http://localhost:9093

Grafana\
http://localhost:3000

## Commands

### Prometheus Reload

curl -X POST http://localhost:9090/-/reload

### Prometheus Health Check

curl http://localhost:9090/-/healthy

### Cloudwatch Exporter Reload

curl -X POST http://localhost:9106/-/reload
