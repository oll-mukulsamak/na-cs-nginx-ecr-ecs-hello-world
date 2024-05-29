FROM nginx:latest

RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx

COPY index.html /usr/share/nginx/html
EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]