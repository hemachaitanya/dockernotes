terraform {
backend "s3" {
    bucket = "elasticbeanstalk-us-west-2-806910215750" # Replace with your actual S3 bucket name
    key    = "EKS/terraform.tfstate"
    region = "us-west-2"
}
}