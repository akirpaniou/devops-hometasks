FROM debian

RUN apt-get update && apt-get install -y apache2 php nano

COPY index.php /var/www/html/

COPY index.html /var/www/html/

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]