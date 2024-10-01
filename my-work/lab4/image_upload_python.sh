#!/Users/benberinsky/anaconda3/bin/python3

import urllib.request
import boto3
import requests

s3 = boto3.client('s3', region_name='us-east-1')

#saves information about image being used in variables through user input
file_url = "https://openartstudio.wordpress.com/wp-content/uploads/2014/04/pingu_gif.gif"
bucket = "ds2022-tfu5hw"
filename = "easy_gif"
expires_in = 604800         

#saves the local file in a variable
response = requests.get(file_url)

s3.put_object(
    Body=response.content, 
    Bucket=bucket,
    Key=filename,
    ACL='public-read',
    ContentType='image/gif'
)

response = s3.generate_presigned_url(
    'get_object',
    Params={'Bucket': bucket, 'Key': filename},
    ExpiresIn=expires_in
)

#prints out the url for the image

print(f"Presigned URL: {response}")


