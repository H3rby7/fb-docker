FROM ubuntu:22.10
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl php
RUN curl -o fb-tools.deb 'http://www.mengelke.de'`curl http://www.mengelke.de/Projekte/FritzBox-Tools.html | grep -a -o -E '/Projekte/FritzBox;fb-tools.deb\?[a-f0-9]+'`
RUN dpkg -i fb-tools.deb
