variable "region" {
    type = "string"
    default = "us-east-1"
}

variable "subnet1az" {
    type    = "string"
    default = "us-east-1a"
}


variable "subnet2az" {
    type    = "string"
    default = "us-east-1b"
}



# optional ami-id
variable "appserverami" {
    type    = "string"
    default = "ami-07ebfd5b3428b6f4d"
  
}

variable "awskeypair" {
    type    = "string"
    default = "terraform"
  
}

variable "sshusername" {
    type    = "string"
    default = "ubuntu"
  
}

variable "sshkeypath" {
    type    = "string"
    default = "./awsmodules/awsvmmodule/terraform.pem"
  
}