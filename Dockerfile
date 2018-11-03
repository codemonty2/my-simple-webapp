FROM ubuntu

CMD echo "Hello world"

RUN apt-get update && apt-get install -y python python-pip
RUN pip install --upgrade pip

CMD echo "Install from PIP"

RUN pip install flask

COPY ./app.py /opt/app.py

ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080