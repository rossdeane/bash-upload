# bash-upload
An S3 file uploader in bash.


## Prerequisites
* [s3cmd](https://s3tools.org/download)
* An S3 bucket that is publically accessible

## Optional
* A domain pointing to your s3 bucket

# Setup

Set `S3_BUCKET_NAME` to the name of your bucket, not including the s3:// prefix.

Set `BASE_URL` to the a domain pointing to your bucket, or failing that the url of the bucket itself.

# Usage

`./upload.sh my_screenshot_img.png`

# Demo

![](https://i.imgur.com/7roWza1.gif)