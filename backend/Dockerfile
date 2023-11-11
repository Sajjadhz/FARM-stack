FROM python:3.8

EXPOSE 8080
WORKDIR /code
COPY ./requirements* /code/
RUN pip install pip==20.2.4
RUN pip install --upgrade -r /code/requirements.txt

COPY ./apps /code/apps

COPY ./main.py /code/main.py

COPY ./config.py /code/config.py

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
