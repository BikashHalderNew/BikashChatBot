FROM python:latest
RUN apt-get update && apt-get upgrade -y
RUN pip3 install -U pip
COPY . /bikash/
WORKDIR /bikash/
RUN pip3 install -U -r Installer
CMD python3 Bikash.py
