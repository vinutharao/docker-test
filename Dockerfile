
FROM ubuntu
MAINTAINER VINUTHA vinurao@cisco.com
# Get webserver app
RUN apt-get update
RUN apt-get install apache2 -y

# To get curl package
RUN apt-get install curl -y

# Create default page
RUN echo "Hello World" > /var/www/html/index.html

# Run apache service
CMD ["/usr/sbin/apachectl", "-DFOREGROUND"]  }
