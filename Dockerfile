FROM python

RUN pip install flask

COPY /opt/app/app.py ./
COPY /opt/app/up.py ./

EXPOSE 8181

ENTRYPOINT ["python", "/opt/app/app.py"]

