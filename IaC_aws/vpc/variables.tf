variable "region" {
  default = ""
}
variable "public_cidr" {
  type    = list(string)
  default = ["0.0.0.0/24", "0.0.0.0/24"]
}
variable "private_cidr" {
  default = ["0.0.0.0/24", "0.0.0.0/24"]
}
variable "vpc_cidr" {
  type    = string
  default = "0.0.0.0/16"
}
