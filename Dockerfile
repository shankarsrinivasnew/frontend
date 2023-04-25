FROM nginx
RUN rm -f /etc/nginx/conf.d/default.conf /usr/share/nginx/html/*

COPY docker/roboshop.conf /etc/nginx/conf.d/roboshop.conf
COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html/