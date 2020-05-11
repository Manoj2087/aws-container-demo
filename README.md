# aws-container-demo

## Part1: create your first docker image
- view the `my-python-api\Dockerfile`
- run the `my-python-api\build.sh`
- inpect the layers `docker image inspect python:2.7-alpine -f '{{.RootFS.Layers}}' && docker image inspect my-app -f '{{.RootFS.Layers}}'`
- 


## Part2: push the docker image to ecr

```
docker images
aws ecr get-login-password --region ap-southeast-2 | docker login --username AWS --password-stdin 258285536094.dkr.ecr.ap-southeast-2.amazonaws.com
docker tag my-app:latest 258285536094.dkr.ecr.ap-southeast-2.amazonaws.com/my-app:latest
docker push 258285536094.dkr.ecr.ap-southeast-2.amazonaws.com/my-app:latest
```


## Part3: Create a ecs cluster


## Part4: Deploy a ecs task