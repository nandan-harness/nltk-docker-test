FROM python:3.6-slim


ADD . /home/harness/
WORKDIR /home/harness/


RUN pip install nltk==3.4.5
RUN python -m nltk.downloader punkt

CMD python parent_process.py