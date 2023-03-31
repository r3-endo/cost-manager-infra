resource "aws_vpc" "name" {
  cidr_block                     = local.vpc_cidr
  enable_dns_hostnames           = "true"
  enable_dns_support             = "true"
  enable_classiclink             = "false"
  enable_classiclink_dns_support = "false"

  tags = merge(
    tomap({
      "Name" : "${var.tags["system"]}-vpc"
      "project" : "${var.tags["project"]}"
  }), var.tags)
}