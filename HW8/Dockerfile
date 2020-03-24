FROM python:alpine

COPY flaskapp.py  /opt/flaskapp.py
WORKDIR /opt/

COPY wsgi.py /opt/wsgi.py
COPY requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt
RUN chmod +x /opt/flaskapp.py
RUN rm -rf /tmp/requirements.txt

CMD gunicorn --workers 2 --bind unix:socket/flaskapp.sock wsgi:app

