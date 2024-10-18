terraform {
  backend "s3" {
  
    bucket = "terraform-s3-bucket-new1996"
    key="backend/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "backendtabel"
    
  }
}

resource "aws_instance" "first_ec2" {
    ami="ami-0522ab6e1ddcc7055"
    instance_type="t2.micro"
    tags={
        Name = "ec-2"
    }
    key_name = "jenkins_key_pair"
  
}
