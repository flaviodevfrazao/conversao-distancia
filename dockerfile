FROM python:3.8.12-slim-buster
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "gunicorn", "--workers=1", "--bind", "0.0.0.0:5000", "--log-level=info", "app:app" ]