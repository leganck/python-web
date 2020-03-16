FROM python:3.7
RUN mkdir /app
ADD * /app
RUN  cd /app && python -m pip install --upgrade pip && pip install -p
WORKDIR /app
ENTRYPOINT [ "python" , "app.py"]