FROM ubuntu
MAINTAINER Amit Mund "amitmund+docker@gmail.com"

RUN apt-get install -y apache2

EXPOSE 80

ADD run_apache_foreground.sh /run_apache_foreground.sh
RUN chmod +x /run_apache_foreground.sh

CMD ["/run_apache_foreground.sh"]
