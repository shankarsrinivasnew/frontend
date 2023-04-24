FROM nginx
RUN rm -f /etc/nginx/conf.d/default.conf

COPY docker/roboshop.conf /etc/nginx/conf.d/default.conf
COPY docker/nginx.conf /etc/nginx/nginx.conf
COPY . /usr/share/nginx/html/