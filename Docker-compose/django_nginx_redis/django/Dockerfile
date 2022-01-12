FROM python:3.8.5

WORKDIR /opt/server

ADD server.tar .

RUN pip install -r requirements.txt
RUN python manage.py migrate

VOLUME /opt/server /opt/server

EXPOSE 8000

ENTRYPOINT ["supervisord","-c", "supervisord.conf"]