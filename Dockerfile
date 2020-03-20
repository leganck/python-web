FROM python:3.7-alpine
RUN mkdir /app
ADD * /app/
WORKDIR /app
RUN  pip install pipenv && pipenv install  --deploy --ignore-pipfile
EXPOSE 5000
ENTRYPOINT [ "pipenv" ,"run" ,"python" , "app.py"]
