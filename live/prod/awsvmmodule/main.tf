provider "aws" {
   region       = "${var.region}"
   access_key   = "${var.accesskey}"
   secret_key   = "${var.secretkey}"
}

terraform {
     backend "s3" {
       bucket         = "terraform-s3-statefile"
       key            = "sandhya@1234.state"
       region         = "us-east-1"
       dynamodb_table = "terraform"
      }
    }

module "tomcatinaws" {
  source    = "./awsmodules/awsvmmodule"
  region    = "us-east-1"
  name = "prod"
  instance_type = "t2.small"
  
}