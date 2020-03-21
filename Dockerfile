FROM python:3.7-alpine
RUN mkdir /app
ADD app.py Pipfile /app/
WORKDIR /app
RUN  pip install pipenv && pipenv install --system
EXPOSE 5000
ENTRYPOINT ["python" , "app.py"]
