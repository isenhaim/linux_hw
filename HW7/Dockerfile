FROM python:alpine

MAINTAINER Evgeniy Simonov <simonov.ev.al@gmail.com>

RUN apk update && apk upgrade && apk add bash && apk add git
RUN mkdir -p project && cd project && git clone https://github.com/mtuktarov/linux_stuff.git ./

WORKDIR /project/django-test-app

RUN pip install -r /project/django-test-app/requirements.txt
RUN rm -rf /project/django-test-app/requirements.txt
RUN python manage.py migrate

CMD python manage.py runserver 0.0.0.0:8000