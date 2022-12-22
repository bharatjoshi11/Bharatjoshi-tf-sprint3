output "mod1-output1" {
  value = module.mod1.sg-output
}

output "mod1-output2" {
  value = module.mod1.sg-output2
}

output "mod2-output" {
    
  value = module.mod2.s3-output
}

output "mod2-output2" {
  value = module.mod2.s3-output2
}


output "mod3-output" {
  value = [for i in var.ec2:i["ami"]]
}


output "mod3-outputs" {
    value = [for i in var.ec2:i["Name"]]
}
