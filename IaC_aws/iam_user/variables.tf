variable "region" {
  default = "us-west-1"
}

variable "username" {
  type    = list(string)
  default = ["", "", "", "", "", "", ""]
}
