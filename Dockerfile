FROM prefecthq/prefect:2-python3.10

ARG DIR_PATH
ENV PARENT_DIR_PATH=${DIR_PATH}

# COPY requirements.txt ${PARENT_DIR_PATH}requirements.txt
COPY . ${PARENT_DIR_PATH}

RUN pip install --no-cache-dir -r ${PARENT_DIR_PATH}requirements.txt --use-deprecated=legacy-resolver

WORKDIR ${PARENT_DIR_PATH}