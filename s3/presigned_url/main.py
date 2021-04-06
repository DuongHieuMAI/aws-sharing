import boto3
import os
import requests
import logging

# config
BUCKET_NAME = os.environ.get('AWS_DEMO_BUCKET_NAME', 'drone-sharing-2021')
OBJECT_NAME = 'hello.txt'
ACCESS_KEY = os.environ['AWS_DEMO_ACCESS_KEY']
SECRET_KEY = os.environ['AWS_DEMO_SECRET_KEY']
REGION = os.environ.get('REGION', 'us-west-2')

client = boto3.client(
    's3',
    aws_access_key_id=ACCESS_KEY,
    aws_secret_access_key=SECRET_KEY,
)

session = boto3.Session(
    aws_access_key_id=ACCESS_KEY,
    aws_secret_access_key=SECRET_KEY,
)
s3 = session.resource('s3')

def create_presigned_url(object_key, expiration=120):
    response = client.generate_presigned_post(
        BUCKET_NAME,
        object_key,       
        ExpiresIn=expiration
    )
    print(response)
    return response

# Create presigned url on server side
response = create_presigned_url(OBJECT_NAME)

# upload file on client side form response
with open(OBJECT_NAME, 'rb') as f:
    files = {'file': (OBJECT_NAME, f)}
    http_response = requests.post(response['url'], data=response['fields'], files=files)
# If successful, returns HTTP status code 204
print(f'File upload HTTP : {http_response.content}')