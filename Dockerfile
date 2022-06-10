FROM php:7.4.30
RUN wget -O fb-tools.deb 'http://www.mengelke.de'`wget -q -O- http://www.mengelke.de/Projekte/FritzBox-Tools.html | grep -a -o -E '/Projekte/FritzBox;fb-tools.deb\?[a-f0-9]+'`
RUN dpkg -i fb-tools.deb
