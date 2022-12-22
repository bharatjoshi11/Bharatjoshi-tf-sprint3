output "mod1-output" {
  value = module.mod1.sg-output
}

output "mod2-output" {
  value = module.mod2.s3-output
}


output "mod3-output" {
  value = [for i in var.ec2:i["ami"]]
}


output "mod3-outputs" {
    value = [for i in var.ec2:i["Name"]]
}
