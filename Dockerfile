FROM amazonlinux:latest
RUN yum update -y
RUN yum install -y git python3-pip
RUN git clone https://github.com/GOUSERABBANI44/flask-library-app.git
WORKDIR /flask-library-app
RUN pip3 install -r requirements.txt
EXPOSE 9000
CMD ["python3", "./app.py"]
