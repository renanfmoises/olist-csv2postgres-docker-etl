FROM python:latest

ADD requirements.txt requirements.txt

RUN pip install -r requirements.txt

COPY db_params.py db_params.py
COPY etl.py etl.py

CMD ["python", "-u", "etl.py"]
