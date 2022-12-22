#security group

variable "ports" {
  type = map(any)
}

variable "vpc_id" {
  type = string
}

variable "name" {
  type = string
}

variable "cidr" {
  type = string
}

variable "tags" {
  type = map(any)
}

#bucket

variable "bucketname"{
  type = string
}


#instances


variable "ec2" {
    type = map(any)
}