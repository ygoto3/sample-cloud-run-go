sample-cloud-run-go
---

## Build docker image and push it to GCP Container Registry

```sh
$ gcloud auth configure-docker
$ docker build . -t gcr.io/[project id]/[app]:latest --platform linux/amd64
$ docker push gcr.io/[project id]/[app]:latest
```

## Deploy Google Cloud Run

```sh
$ cd terraform/server
$ terraform init
$ terraform plan --var-file=config.tfvars
$ terraform apply --var-file=config.tfvars
```
