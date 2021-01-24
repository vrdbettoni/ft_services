#!/bin/bash
kubectl delete -f srcs/nginx.yaml
kubectl delete -f srcs/ftps.yaml
kubectl delete -f srcs/ingress.yaml
helm delete nginx-ingress
kubectl delete -f srcs/phpmyadmin.yaml
kubectl delete secret ssl-keys
kubectl delete -f srcs/wordpress.yaml
kubectl delete -f srcs/mysql.yaml
helm delete grafana
helm delete influxdb
# kubectl delete secret ssh-keys
# kubectl delete configmap nginx-config-map
printf "end of clean\n"