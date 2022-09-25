FROM devopsedu/webapp
ADD website /var/www/html
RUN date
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND
