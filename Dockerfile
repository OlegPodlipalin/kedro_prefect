# FROM prefecthq/prefect:2-python3.10
# # RUN pip install poetry
# COPY requirements.txt /opt/prefect/requirements.txt
# # COPY . /opt/prefect/
# # COPY poetry.lock /opt/prefect/poetry.lock
# RUN python -m pip install -r /opt/prefect/requirements.txt
# # RUN poetry config virtualenvs.create false
# # RUN poetry install --no-dev
# # COPY . /opt/prefect/
# WORKDIR /opt/prefect/
FROM prefecthq/prefect:2-python3.10

ENV PARENT_DIR_PATH /otp/prefect/

COPY requirements.txt ${PARENT_DIR_PATH}requirements.txt

RUN pip install --no-cache-dir -r ${PARENT_DIR_PATH}requirements.txt --use-deprecated=legacy-resolver

WORKDIR ${PARENT_DIR_PATH}
