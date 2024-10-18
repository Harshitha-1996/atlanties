
resource "aws_instance" "first_ec2" {
    ami="ami-0522ab6e1ddcc7055"
    instance_type="t2.micro"
    tags={
        Name = "ec-2"
    }
    key_name = "jenkins_key_pair"
}

resource "aws_s3_bucket" "existing_bucket" {
  bucket = "terraform-s3-bucket-new1996"
  # Other configurations...
}

resource "aws_dynamodb_table" "existing_table" {
  name           = "backendtabel"
  billing_mode   = "PAY_PER_REQUEST"
  attribute {
    name = "LockID"
    type = "S"
  }
  # Other configurations...
}
