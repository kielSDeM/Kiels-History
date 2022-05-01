variable "im4gn" {
  type = map(string)
  default = {
    im4gn_large    = "im4gn.large"
    im4gn_xlarge   = "im4gn.xlarge"
    im4gn_2xlarge  = "im4gn.2xlarge"
    im4gn_4xlarge  = "im4gn.4xlarge"
    im4gn_8xlarge  = "im4gn.8xlarge"
    im4gn_16xlarge = "im4gn.16xlarge"
  }
}

variable "is4gen" {
  type = map(string)
  default = {
    is4gen_medium  = "is4gen.medium"
    is4gen_large   = "is4gen.large"
    is4gen_xlarge  = "is4gen.xlarge"
    is4gen_2xlarge = "is4gen.2xlarge"
    is4gen_4xlarge = "is4gen.4xlarge"
    is4gen_8xlarge = "is4gen.8xlarge"

  }
}

variable "i4i" {
  type = map(string)
  default = {
    i4i_large    = "i4i.large"
    i4i_xlarge   = "i4i.xlarge"
    i4i_2xlarge  = "i4i.2xlarge"
    i4i_4xlarge  = "i4i.4xlarge"
    i4i_8xlarge  = "i4i.8xlarge"
    i4i_16xlarge = "i4i.16xlarge"
    i4i_32xlarge = "i4i.32xlarge"
  }
}

variable "i3" {
  type = map(string)
  default = {
    i3_large    = "i3.large"
    i3_xlarge   = "i3.xlarge"
    i3_2xlarge  = "i3.2xlarge"
    i3_4xlarge  = "i3.4xlarge"
    i3_8xlarge  = "i3.8xlarge"
    i3_16xlarge = "i3.16xlarge"
    i3_metal    = "i3.metal"
  }
}

variable "i3en" {
  type = map(string)
  default = {
    i3en_large    = "i3en.large"
    i3en_xlarge   = "i3en.xlarge"
    i3en_2xlarge  = "i3en.2xlarge"
    i3en_3xlarge  = "i3en.3xlarge"
    i3en_6xlarge  = "i3en.6xlarge"
    i3en_12xlarge = "i3en.12xlarge"
    i3en_24xlarge = "i3en.24xlarge"
    i3en_metal    = "i3en.metal"
  }
}

variable "d2" {
  type = map(string)
  default = {
    d2_xlarge  = "d2.xlarge"
    d2_2xlarge = "d2.2xlarge"
    d2_4xlarge = "d2.4xlarge"
    d2_8xlarge = "d2.8xlarge"
  }
}

variable "d3" {
  type = map(string)
  default = {
    d3_xlarge  = "d3.xlarge"
    d3_2xlarge = "d3.2xlarge"
    d3_4xlarge = "d3.4xlarge"
    d3_8xlarge = "d3.8xlarge"
  }
}

variable "d3en" {
  type = map(string)
  default = {
    d3en_xlarge   = "d3en.xlarge"
    d3en_2xlarge  = "d3en.2xlarge"
    d3en_4xlarge  = "d3en.4xlarge"
    d3en_6xlarge  = "d3en.6xlarge"
    d3en_8xlarge  = "d3en.8xlarge"
    d3en_12xlarge = "d3en.12xlarge"
  }
}

variable "h1" {
  type = map(string)
  default = {
    h1_2xlarge  = "h1.2xlarge"
    h1_4xlarge  = "h1.4xlarge"
    h1_8xlarge  = "h1.8xlarge"
    h1_16xlarge = "h1.16xlarge"
  }
}
