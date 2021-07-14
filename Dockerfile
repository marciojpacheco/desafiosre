FROM python:3

RUN pip3 install flask

COPY app.py ./
COPY up.py ./

EXPOSE 8181

ENTRYPOINT ["python", "/app.py"]


