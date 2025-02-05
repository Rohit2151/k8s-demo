Contains configurations for deploying and managing various components in a Kubernetes cluster. The setup includes a cron job, daemonset, persistent volumes, and a service definition for different microservices.

cronjob.yaml
This file contains the configuration for a Kubernetes cron job. It schedules a task that runs at specified intervals.

cron.sh
A shell script that is executed by the cron job. This script performs tasks like data processing or cleanup, depending on the project’s needs.

daemonset.yaml
This file defines a Kubernetes DaemonSet. DaemonSets ensure that a copy of a pod is running on each node in the cluster.

Dockerfile
This file is used to build a Docker image for your application. It contains the instructions needed to create a container for the microservice.

logspod.yaml
This file defines a Kubernetes Pod for a logging service. It is used to collect and forward logs from containers to a central logging system.

metrics-pvc.yaml
Defines a PersistentVolumeClaim (PVC) to store metric data. This file helps configure storage for metrics and monitoring data.

metrics-pv.yaml
Defines a PersistentVolume (PV) to be used with the PVC from metrics-pvc.yaml. It ensures there is sufficient and persistent storage available for storing metrics.

service.yaml
This file defines a Kubernetes Service. The service exposes a set of pods to the network, typically providing access to an application running in the cluster.

Build the Docker Image and push aws ecr ropo
docker build -t myapp .

Applied Kubernetes files 

kubectl apply -f cronjob.yaml
kubectl apply -f daemonset.yaml
kubectl apply -f logspod.yaml
kubectl apply -f metrics-pv.yaml
kubectl apply -f metrics-pvc.yaml
kubectl apply -f service.yaml

