FROM ubuntu:20.04
RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa -y
RUN apt install python3.8 python3-pip -y
WORKDIR /home/ubuntu/app
COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY . .
EXPOSE 5000

CMD ["python3.8","app.py"]