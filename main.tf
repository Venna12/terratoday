provider "aws" {
region = "us-east-1"
access_key = "AKIAZQM33DKB53ZNPBGI"
secret_key = "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"
}

resource "aws_instance" "this" {
ami     = "ami-007855ac798b5175e"
instance_type = "t2.micro"
count         =   3
key_name     = "11amclass"
tags  =  {
Name  = "terraform"
}
}
