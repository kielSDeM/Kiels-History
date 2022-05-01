FROM python:3.8-alpine

RUN apk update

RUN apk --no-cache add curl \
    && apk --no-cache add git \
    && apk --no-cache add unzip \
    && apk --no-cache add unzip

RUN pip install --no-cache-dir boto3

RUN  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
     && unzip awscliv2.zip \
     && ./aws/install

RUN git clone https://github.com/KielDemarco/kiels-aws-boto3-repo.git \
    && cd kiels-aws-boto3-repo

CMD ["python3", "./s3.py"]
ENTRYPOINT ["python3"]
