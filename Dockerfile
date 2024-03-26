FROM prefecthq/prefect:2.16.4-python3.10
COPY requirements.txt /opt/prefect/requirements.txt
RUN python -m pip install -r /opt/prefect/requirements.txt
# COPY . /opt/prefect/
WORKDIR /opt/prefect/