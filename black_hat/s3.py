import boto3

s3 = boto3.client('s3')
s3.upload_file('hello_from_kiel.txt','red-death1','this_from.txt')

