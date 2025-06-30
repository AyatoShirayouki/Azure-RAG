FROM python:3.10

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

RUN pip install --no-cache-dir -r requirements.txt

COPY webapp/* /webapp

ENTRYPOINT ["uvicorn"]

CMD ["main:app", "--host", "0.0.0.0", "--port", "8000"]
