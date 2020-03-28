provider "aws" {
   region       = "${var.region}"
   access_key   = "${var.accesskey}"
   secret_key   = "${var.secretkey}"
}

terraform {
     backend "s3" {
       bucket         = "terraform-s3-statefile"
      #  acl            = "bucket-owner-full-control"
       key            = "sandhya@1234.state"
       region         = "us-east-1"
      #  encrypt        = false
       dynamodb_table = "terraform"
      }
    }

module "tomcatinaws" {
  source    = "./awsmodules/awsvmmodule"
  region    = "us-east-1"
  
}
#./awsmodules/awsvmmodule/terraform.pem
#./modules/

#terraform init --backend-config="dynamodb_table=terraform" --backend-config="access_key=AKIAYOAV5VG6I2GPGMXL" --backend-config="secret_key=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"