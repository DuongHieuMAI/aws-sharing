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

# Upload file
s3.meta.client.upload_file(
    f'/tmp/{OBJECT_NAME}',
    BUCKET_NAME,
    OBJECT_NAME,
    ExtraArgs={'ACL':'public-read'}
)

# Download file
s3.meta.client.download_file(BUCKET_NAME, OBJECT_NAME, '/tmp/hello-copy.txt')

# Download file using curl/wget
# If get 403, check object permission
url = f'https://{BUCKET_NAME}.s3-{REGION}.amazonaws.com/{OBJECT_NAME}'
print(url)