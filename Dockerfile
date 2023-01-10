FROM python:alpine3.17 as base
COPY requirements.txt ./requirements.txt
COPY setup.py ./setup.py
RUN pip install -r requirements.txt
RUN pip install .

FROM base as develop
COPY scripts ./scripts
RUN chmod +x scripts
COPY tests ./tests
COPY pytest.ini ./pytest.ini
COPY requirements_dev.txt ./requirements_dev.txt
RUN pip install -r requirements_dev.txt
