FROM python:3.8-slim

LABEL "maintainer" = "Jaime Ferrando Huertas <fhjaime96@gmail.com>"

COPY requirements.txt /
RUN pip install -r /requirements.txt
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]