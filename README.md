# custom-application

A Helm chart for customized deploying of containerized applicatios

![Version: 0.1.10](https://img.shields.io/badge/Version-0.1.10-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

## Installing the Chart

To install the chart with the release name `my-release`:

```console
$ helm repo add helm-custom-app git+https://bitbucket.org/asteriosoft/helm-custom-app?ref=0.1.10
$ helm install my-release helm-custom-app/custom-application
```

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Pod [affinity](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#affinity-and-anti-affinity) |
| autoscaling.enabled | bool | `false` | Enable horizontal pod autoscaling |
| customEnv | string | `nil` | Container environment variables |
| deploymentStrategy | object | `{}` |  |
| external.enableHttp | bool | `true` | Add http port to service |
| external.enabled | bool | `false` | Create service with type loadbalancer for externall access |
| external.externalTrafficPolicy | string | `"Local"` | route external traffic to node-local or cluster-wide endpoints |
| external.targetPort | string | `"app-port"` | External service [target port](https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service) |
| external.type | string | `"LoadBalancer"` | Type of created service |
| extraObjects | list | `[]` | Add extra objects dynamically to this chart |
| gcp.backendConfig.enabled | bool | `false` | Create backend configuration used by GCP ingress |
| gcp.backendConfig.logging | bool | `false` | Enable GCP ALB logging |
| gcp.backendConfig.timeout | int | `30` | Request's timeout used by GCP ALB  |
| gcp.frontendConfig.enabled | bool | `false` | Create frontend configuration used by GCP ingress |
| gcp.frontendConfig.redirectToHttps | bool | `true` | Redirect http requests handled by GCP ALB to https endpoint |
| gcp.managedCertificate.domain | string | `"foo.bar"` | Domain for GCP managed sertificate |
| gcp.managedCertificate.enabled | bool | `false` | Create GCP managed sertificate |
| image | string | `"repo/image"` | Docker image source |
| imagePullPolicy | string | `"IfNotPresent"` | Image pull policy |
| imagePullSecrets | string | `nil` | Image pull existing secret |
| imageTag | string | `"0.1.0"` | Docker image tag |
| ingress.enabled | bool | `false` | Create ingress for external access |
| livenessProbe | string | `nil` | Pod [liveness probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-a-liveness-command) definition |
| nodeSelector | object | `{}` | Pod [node selector](https://kubernetes.io/docs/concepts/configuration/assign-pod-node/) |
| podAnnotations | object | `{}` |  |
| podDisruptionBudget.enabled | bool | `false` | Define pod disruption budget |
| podDisruptionBudget.policy.minAvailable | int | `1` | Pod disruption policy |
| prometheus.serviceMonitor.enabled | bool | `false` | Prometheus service monitor |
| prometheus.serviceMonitor.fallbackScrapeProtocol | string | `nil` | Fallback scrape protocol used by Prometheus for scraping metrics |
| prometheus.serviceMonitor.interval | string | `"15s"` | Prometheus scrape interval |
| prometheus.serviceMonitor.path | string | `"/metrics/prometheus"` | Path used for prometheus scraping |
| prometheus.serviceMonitor.portName | string | `"app-port"` | Port name used for prometheus scraping |
| prometheus.serviceMonitor.targetLabels | string | `nil` | Defines the labels which are transferred from the associated Kubernetes Service object onto the ingested metrics |
| readinessProbe | string | `nil` | Pod [readiness probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-readiness-probes) definition |
| replicaCount | int | `1` | Number of pod replicas |
| resources | object | `{}` | Pod resources definition |
| service.additionalLabels | string | `nil` | Custom service labels |
| service.annotations | string | `nil` | Custom service annotations |
| service.ports[0] | object | `{"name":"app-port","port":8080}` | Container ports definition |
| serviceAccount | object | `{}` | Pod service account |
| startupProbe | string | `nil` | Pod [startup probe](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/#define-startup-probes) definition |
| tolerations | list | `[]` | Pod [tolerations](https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/) |
| topologySpreadConstraints.enabled | bool | `false` | Enable [topology spread constraints](https://kubernetes.io/docs/concepts/scheduling-eviction/topology-spread-constraints/) |
| volumeMounts | string | `nil` | Container volume mounts definition |
| volumes | string | `nil` | Pod volumes definition |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.14.2](https://github.com/norwoodj/helm-docs/releases/v1.14.2)