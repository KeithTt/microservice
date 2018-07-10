FROM keithtt/python-thrift:3.6

LABEL maintainer="KeithTt"

ENV PYTHONPATH /

COPY message /message

ENTRYPOINT ["python", "/message/message_service.py"]
