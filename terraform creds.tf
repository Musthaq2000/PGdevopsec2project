copy the existing AWS credentials and paste in the below info code inorder to create creds.tf 

provider "aws" {
access_key = "AWS_LAB_ACCESS_KEY"
secret_key = "AWS_LAB_SECRET_KEY"
token = “AWS_LAB_SECURITY_TOKEN”
region = "us-east-1"
 }  

Note: if you are using your own AWS account no need for the token field.


