module "mod1" {
  source = "../Security_group"
  ports = var.ports 
  vpc_id = var.vpc_id
  name = var.name
  cidr = var.cidr
  tags = var.tags
}


module "mod2" {
  source = "../s3bucket"
  bucketname = var.bucketname
  Owner = var.Owner
}


module "mod3" {
  source = "../instances"
  for_each = var.ec2
  ami = each.value["ami"]
  instance_type = each.value["instance_type"]
  Name = each.value["Name"]
  sgname = each.value["sgname"]
}