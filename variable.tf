variable "region" {
  default = "us-east-1"

}

variable "instance_type" {
  default = "t2.micro"

}


#variable "name" {
#    default = "demo ${count.index}"

#}


variable "department" {
  default = ["dev", "stage", "uat", "prod", "hr", "finance"]

}
