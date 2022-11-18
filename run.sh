#!/usr/bin/env bash

helm lint ./charts/generic-service

helm package ./charts/generic-service

helm repo index --url https://link0ln.github.io/helm-generic/ .

git add .

git commit -m "update" -a

git tag "0.1.9" -m "nextgen" -a

git push

git push origin --tags 
