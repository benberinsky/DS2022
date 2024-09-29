
#!/bin/bash

#assigns variables to be used for uploading
bucket="ds2022-tfu5hw"
filepath="https://www.litmus.com/wp-content/uploads/2021/02/ease-applied-to-tween-with-bouncein-example.gif"
filename="simple.gif"
time=604800

#downloads the file to be uploaded
curl $filepath > $filename

#upload file to s3 bucket
aws s3 cp $filename s3://$bucket/

#url to image uploaded:
url=$(aws s3 presign --expires-in $time s3://$bucket/$filename)
echo "Url: $url"
