terraform {
  backend "s3" {
    bucket         = "w7-odedina-terraform"
    key            = "dev/terraform.tf.state"
    region         = "us-east-1"
    dynamodb_table = "locktable"
    encrypt        = true
  }
}
