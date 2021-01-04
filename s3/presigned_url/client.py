import boto3
import os

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

# List versioning
response = client.list_object_versions(
    Bucket=BUCKET_NAME,
    Prefix=OBJECT_NAME,
)
for version in response.get('Versions'):
    print(version)