{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "custom-application.name" -}}
{{- default .Release.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "custom-application.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "custom-application.labels" -}}
app.kubernetes.io/name: {{ include "custom-application.name" . }}
helm.sh/chart: {{ include "custom-application.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end -}}


{{/*
Pod labels
*/}}
{{- define "custom-application.podLabels" -}}
app.kubernetes.io/name: {{ include "custom-application.name" . }}
helm.sh/chart: {{ include "custom-application.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
{{- end -}}


{{/*
Define resource names
*/}}
{{- define "custom-application.namespace" }}
{{- default (printf "%s" .Release.Namespace) -}}
{{- end }}

{{- define "custom-application.serviceAccount" }}
{{- default (printf "%s-account" .Release.Name) .Values.serviceAccount.name -}}
{{- end }}

{{- define "custom-application.role" }}
{{- default (printf "%s-role" .Release.Name) -}}
{{- end }}

{{- define "custom-application.roleBinding" }}
{{- default (printf "%s-rolebinding" .Release.Name) -}}
{{- end }}

{{- define "custom-application.pdb" }}
{{- default (printf "%s-pdb" .Release.Name) -}}
{{- end }}

{{- define "custom-application.hpa" }}
{{- default (printf "%s-hpa" .Release.Name) -}}
{{- end }}

{{- define "custom-application.external-service" }}
{{- default (printf "%s-external" .Release.Name) -}}
{{- end }}

{{- define "custom-application.ingress" }}
{{- default (printf "%s-ingress" .Release.Name) -}}
{{- end }}

{{- define "custom-application.job" }}
{{- default (printf "%s-job" .Release.Name) -}}
{{- end }}

{{- define "custom-application.cronJob" }}
{{- default (printf "%s-cron" .Release.Name) -}}
{{- end }}

{{- define "custom-application.secret" }}
{{- default (printf "%s-secret" .Release.Name) -}}
{{- end }}

{{- define "custom-application.configmap" }}
{{- default (printf "%s-configmap" .Release.Name) -}}
{{- end }}


{{/*
Define GCP custom resource names
*/}}
{{- define "custom-application.gcp-frontend-config" }}
{{- default (printf "%s-front-cfg" .Release.Name) -}}
{{- end }}

{{- define "custom-application.gcp-backend-config" }}
{{- default (printf "%s-back-cfg" .Release.Name) -}}
{{- end }}

{{- define "custom-application.gcp-managed-certificate" }}
{{- default (printf "%s-crt" .Release.Name) -}}
{{- end }}