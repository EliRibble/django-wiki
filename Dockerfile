FROM debian:bullseye-slim

RUN apt update && apt install -y python3 python3-pip
COPY . /django-wiki
RUN pip3 install -e /django-wiki
ENTRYPOINT ["/usr/bin/python3", "/django-wiki/testproject/manage.py", "runserver"]
