FROM python:3.8-slim-buster
WORKDIR /app
COPY python_project/requirements.txt /app/requirements.txt
COPY python_project/app.py /app/app.py
EXPOSE 5000
ENV FLASK_APP=app.py
CMD ["gunicoorn", "--bind", "0.0.0.0:5000", "app:app"]
WORKDIR /app
EXPOSE 5000
ENV FLASK_APP=app.py
CMDOPTS ["gunicoorn", "--bind", "0.0.0.0:5000", "app:app"]
Now you can run the Dockerfile using the following command:
docker build -t myflaskimage .