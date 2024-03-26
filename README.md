# kedro_prefect

## Overview

This is your new Kedro project with Kedro-Viz and PySpark setup, which was generated using `kedro 0.19.3`.

Take a look at the [Kedro documentation](https://docs.kedro.org) to get started.

## Rules and guidelines

To deploy this project in Prefect you need to run the following command in your CLI:
```bash
python register_prefect_flow.py --work_pool_name <my_pool_name> --work_queue_name <my_queue_name>
```

The following folders must be persisted to the shared volume:  
- input data: `data/01_raw`  
- output files: `data/02_intermediate`  

## API
The pipeline names that are available to run:  
- `myltiply_pipeline`  

## Env variables
To successfully run the pipelines the followihg environmental variables must be specified:
- `PARENT_DIR_PATH` - must be set to the full path of the project root folder. 