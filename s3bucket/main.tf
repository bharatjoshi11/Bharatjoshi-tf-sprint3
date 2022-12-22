resource "aws_s3_bucket" "bharat-s3" {
  bucket = var.bucketname

  tags = {
    "Name" = var.bucketname
     "Owner" = var.Owner
  }
}