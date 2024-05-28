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

COPY . /opt/prefect/
RUN python -m pip install -r /opt/prefect/requirements.txt

WORKDIR /opt/prefect/
