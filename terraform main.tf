create main.tf and paste the below to create an e2 instance with keypair 

resource "aws_instance" "example" {

  ami           = "ami-053b0d53c279acc90"

  instance_type = "t2.micro"

  key_name = "TF_key"

  tags = {

    Name = "Terraform Ec2"

  }

}

resource "aws_key_pair" "TF_key" {
  
  key_name   = "TF_key"

  public_key = tls_private_key.rsa.public_key_openssh

}

resource "tls_private_key" "rsa" {  

  algorithm = "RSA"

  rsa_bits  = 4096

}



resource "local_file" "TF-key" {

    content  = tls_private_key.rsa.private_key_pem

    filename = "tfkey"  
