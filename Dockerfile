FROM python:3.7
RUN mkdir /app
ADD * /app
WORKDIR /app
RUN pip install -p
ENTRYPOINT [ "python" , "app.py"]