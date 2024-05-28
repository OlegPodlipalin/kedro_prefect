# kedro_prefect

## Overview

This is your new Kedro project with Kedro-Viz and PySpark setup, which was generated using `kedro 0.19.3`.

Take a look at the [Kedro documentation](https://docs.kedro.org) to get started.

## Rules and guidelines

The following folders must be persisted to the shared volume:  
- input data: `data/01_raw`  
- output files: `data/02_intermediate`  

## How to set up prevfect
1. run docker-compose: 
```bash
docker compose --profile server up
```
2. open terminal in the server's docker container:
```bash
docker exec -it kedro_prefect-server-1 bash
```
whithin docker container:  

3. create docker work-pool and start worker:
```bash
prefect work-pool create --type docker <my_pool_name> && yes | prefect worker start --pool <my_pool_name>
```
2. (&3) *another option is to run the command directly from the host terminal:
```bash
docker exec kedro_prefect-server-1 sh -c 'nohup prefect work-pool create --type docker <my_pool_name> && yes | prefect worker start --pool <my_pool_name> >/dev/null 2>&1 &'
```
4. deploy flow (temp solution is to run it in python in docker terminal (see p.2) -> check how to deploy with yml):
```bash
python
```
```python
from prefect import flow
flow.from_source(
    "https://github.com/OlegPodlipalin/kedro_prefect.git",
    entrypoint="register_prefect_flow.py:my_flow",
).deploy(
    name="my_deployment_name",
    work_pool_name="hhhh",
    image="ghcr.io/olegpodlipalin/my-prefect:latest",
    job_variables={
    	"auto_remove": True,
    	"volumes": [
    		".:/opt/prefect/data", # mount shared volume form HOST!
    	],
    },
    push=False,
    build=False,
)
```

## API
The pipeline names that are available to run (to run via prefect UI):  
- name: `myltiply_pipeline`
- env: `base`

dummy update