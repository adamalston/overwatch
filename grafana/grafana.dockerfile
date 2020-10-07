FROM grafana/grafana
LABEL maintainer Adam Alston
VOLUME grafana-data:/var/lib/grafana
ENV GF_INSTALL_PLUGINS=grafana-clock-panel,grafana-piechart-panel,camptocamp-prometheus-alertmanager-datasource,vonage-status-panel
EXPOSE 3000