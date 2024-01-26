FROM python:3.9-slim-bullseye

RUN apt-get update &&\
    apt-get install -y python3-dev

RUN python3 -m venv Calibre-Web  

RUN ./Calibre-Web/bin/python3 -m pip install calibreweb

CMD [ "./Calibre-Web/bin/cps"] 
