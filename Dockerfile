FROM fedora:latest
RUN dnf upgrade -y
RUN dnf install tuxpaint vim httpd -y
COPY myinfo.html /var/www/html/
EXPOSE 80
ENTRYPOINT /usr/sbin/httpd -DFOREGROUND
