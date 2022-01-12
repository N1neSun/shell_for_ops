FROM nginx

RUN rm /etc/nginx/conf.d/*
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./http.conf /etc/nginx/conf.d/
COPY ./server.key /etc/nginx/
COPY ./server.crt /etc/nginx/