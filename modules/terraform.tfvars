ports = {
  "HTTPS" = 443,
  "HTTP"  = 80
  "SSH"   = 22
}

vpc_id = "vpc-04b48df654897cfae"

name = "Bharat-sg"

cidr = "50.0.0.0/24"

tags = {
  "Name"    = "Bharatjoshi-sg",
  "Owner"   = "Bharat.joshi@cloudeq.com"
  "Purpose" = "Training"
}

#bucket
bucketname = "bharat-joshi-bucket"


#instances


ec2 = {
  "1" = {

    "ami"           = "ami-0cca134ec43cf708f",
    "instance_type" = "t2.micro",
    "Name"         = "Bharat-joshiins1",
    "sgname" = "aws_security_group.Bharat-sg.Bharat-sg"

  },

  "2" = {
    "ami"           = "ami-0cca134ec43cf708f",
    "instance_type" = "t2.micro",
    "Name"         = "Bharat-joshiins2"
    "sgname" = "aws_security_group.Bharat-sg.Bharat-sg"
  }


}






