provider "aws" {
  region = "eu-west-2" # London region
}
resource "aws_s3_bucket" "terraformbuckettodaysunmoon" {
  bucket = "terraformbuckettodaysunmoon"
}
terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraformbuckettodaysunmoon"
    key            = "global/s3/terraform.tfstate"
    region         = "eu-west-2"
  }
}
