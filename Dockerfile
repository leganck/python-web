FROM python:3.7
RUN mkdir /app
ADD * /app
WORKDIR /app
RUN  pip install pipenv && pipenv install  --deploy --ignore-pipfile
ENTRYPOINT [ "pipenv" ,"run" ,"python" , "app.py"]