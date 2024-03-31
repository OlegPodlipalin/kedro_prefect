FROM prefecthq/prefect:2.16.4-python3.10
RUN pip install poetry
# COPY requirements.txt /opt/prefect/requirements.txt
COPY pyproject.toml /opt/prefect/pyproject.toml
COPY poetry.lock /opt/prefect/poetry.lock
# RUN python -m pip install -r /opt/prefect/requirements.txt
RUN poetry config virtualenvs.create false \
    && poetry install --no-dev
# COPY . /opt/prefect/
WORKDIR /opt/prefect/