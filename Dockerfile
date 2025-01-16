FROM python:latest
LABEL Maintainer="atulkamble"
WORKDIR /usr/app/src
COPY test.py .
CMD [ "python", "./test.py"]


