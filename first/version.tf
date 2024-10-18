terraform {
  backend "s3" {
  
    bucket = "terraform-s3-bucket-new1996"
    key="backend/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "backendtabel"
    
  }
}
