# # syntax=docker/dockerfile:1

# FROM python:3.8-slim-buster

# WORKDIR /python-docker

# COPY src/requirements.txt src/requirements.txt
# RUN pip3 install -r src/requirements.txt

# COPY . .

# EXPOSE 5005
# CMD [ "python","src/app.py", "--host=0.0.0.0"]
# # CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
# ENV FLASK_APP=app.py


# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /python-docker

COPY src/requirements.txt src/requirements.txt
RUN pip3 install -r src/requirements.txt

COPY . .

ENV FLASK_APP=src/app.py

EXPOSE 5005

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0","--port","5005"]