# Overwatch

Fast deploy stack with [Prometheus](https://prometheus.io/), [Grafana](https://grafana.com/), [Alertmanager](https://prometheus.io/docs/alerting/latest/alertmanager/), and [Cloudwatch-Exporter](https://github.com/prometheus/cloudwatch_exporter).

## Environment Configuration

Cloudwatch-Exporter
Put your AWS credentials into `cloudwatch-exporter.dockerfile`.

```
ENV AWS_ACCESS_KEY_ID=value \
    AWS_SECRET_ACCESS_KEY=value
```

## Browser Access

Prometheus: http://localhost:9090

Alertmanager: http://localhost:9093

Grafana: http://localhost:3000

## Commands

Prometheus Reload: `curl -X POST http://localhost:9090/-/reload`

Prometheus Health Check: `curl http://localhost:9090/-/healthy`

Cloudwatch Exporter Reload: `curl -X POST http://localhost:9106/-/reload`
