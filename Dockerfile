FROM python

RUN pip install flask

COPY app.py ./
COPY up.py ./

EXPOSE 8181

ENTRYPOINT ["python", "/app.py"]

