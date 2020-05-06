FROM python:3.6-slim


ADD . /home/harness/
WORKDIR /home/harness/

RUN apt-get update && apt-get install -y make wget protobuf-compiler \
    build-essential ntp \
    libssl-dev strace procps

RUN pip install nltk==3.4.5
RUN python -m nltk.downloader punkt

CMD python parent_process.py