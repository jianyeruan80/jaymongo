FROM  mongo
MAINTAINER   jianyeruan "jianyeruan@gmail.com"
ADD run.sh /run.sh
RUN apt-get update
RUN apt-get -y upgrade 

#WORKDIR /usr/share/app/node
#EXPOSE 22
#RUN mkdir -p /data/db
#USER 751
#RUN chmod 755 /start.sh
#RUN chown -R www-data:www-data /usr/share/nginx/www
#VOLUME ["/data"]