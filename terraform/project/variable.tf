variable "aws_account_id" {}
variable "aws_region" {}

variable "tags" {
  type = map(string)
  default = {
    system  = "cost-manager"
    project = "cost-manager"
  }
}