#  Observability Dashboard for Kubernetes (Prometheus + Grafana)

##  Overview
This project sets up **end-to-end observability** for containerized apps on Kubernetes using **Prometheus** (metrics & alerting) and **Grafana** (dashboards). It captures app, cluster, and infrastructure metrics, adds **SLO/SLA views**, and triggers alerts on reliability thresholds.

##  Tools & Technologies
- Kubernetes (EKS or kind/minikube compatible)
- Prometheus + Alertmanager
- Grafana (dashboards, folders, alerts)
- kube-state-metrics, node-exporter
- (Optional) Loki for logs, Tempo for traces

##  Key Features
- **Golden signals** (latency, traffic, errors, saturation) dashboards
- **Service & pod health** dashboards (kube-state-metrics)
- **Node & cluster** capacity dashboards (CPU, memory, disk, network)
- **SLO monitoring** with burn-rate alerting (multi-window, multi-burn)
- **Alerting** via Alertmanager routes (e.g., Slack/email/webhook)
- Ready for **production namespaces** and **multi-env** (dev/stage/prod)

##  Results / Impact (example outcomes)
- Reduced mean-time-to-detect (MTTD) by **40%** with actionable alerts
- Cut false positives by **30%** using burn-rate alert patterns
- Enabled weekly ops reviews with **SLO dashboards** per service

##  Project Structure
