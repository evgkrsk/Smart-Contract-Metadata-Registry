# Run it like this:
# docker build -t registry .
# docker run --rm -it -v $(pwd):/app registry
FROM python:3.11-slim-buster

ENV PIP_NO_CACHE_DIR=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY v3 .
ENTRYPOINT ["python3", "./v3/generate_abi_dbs.py"]
