variable "p4" {
  type = map(string)
  default = {
    p4d_24xlarge = "p4d.24xlarge"
  }
}

variable "p3" {
  type = map(string)
  default = {
    p3_2xlarge = "p3.2xlarge"
    p3_8xlarge = "p3.8xlarge"
    p3_16xlarge = "p3.16xlarge"
    p3dn_24xlarge = "p3dn.24xlarge"
  }
}

variable "p2" {
  type = map(string)
  default = {
    p2_xlarge = "p2.2xlarge"
    p2_8xlarge = "p2.8xlarge"
    p2_16xlarge = "p2.16xlarge"
  }
}

variable "dl1" {
  type = map(string)
  default = {
    dl1_24xlarge = "dl1.24xlarge"
  }
}

variable "inf1" {
  type = map(string)
  default = {
    inf1_xlarge = "inf1.xlarge"
    inf1_2xlarge = "inf1.2xlarge"
    inf1_6xlarge = "inf1.6xlarge"
    inf1_24xlarge = "inf1.24xlarge"
  }
}

variable "g5" {
  type = map(string)
  default = {
    g5_xlarge = "g5.xlarge"
    g5_2xlarge = "g5.2xlarge"
    g5_4xlarge = "g5.4xlarge"
    g5_8xlarge = "g5.8xlarge"
    g5_16xlarge = "g5.16xlarge"
    g5_12xlarge = "g5.12xlarge"
    g5_24xlarge = "g5.24xlarge"
    g5_48xlarge = "g5.48xlarge"
  }
}

variable "g5g" {
  type = map(string)
  default = {
    g5g_xlarge = "g5g.xlarge"
    g5g_2xlarge = "g5g.2xlarge"
    g5g_4xlarge = "g5g.4xlarge"
    g5g_8xlarge = "g5g.8xlarge"
    g5g_16xlarge = "g5g.16xlarge"
    g5g_metal =    "g5g.metal"

  }
}

variable "g4dn" {
  type = map(string)
  default = {
    g4dn_xlarge = "g4dn.xlarge"
    g4dn_2xlarge = "g4dn.2xlarge"
    g4dn_4xlarge = "g4dn.4xlarge"
    g4dn_8xlarge = "g4dn.8xlarge"
    g4dn_16xlarge = "g4dn.16xlarge"
     g4dn_12xlarge = "g4dn.12xlarge"
    g4dn_metal =    "g4dn.metal"

  }
}

variable "g4ad" {
  type = map(string)
  default = {
    g4ad_xlarge = "g4ad.xlarge"
    g4ad_2xlarge = "g4ad.2xlarge"
    g4ad_4xlarge = "g4ad.4xlarge"
    g4ad_8xlarge = "g4ad.8xlarge"
    g4ad_16xlarge = "g4ad.16xlarge"

  }
}

variable "g3" {
  type = map(string)
  default = {
    g3_xlarge = "g3.xlarge"
    g3_2xlarge = "g3.2xlarge"
    g3_4xlarge = "g3.4xlarge"
    g3_8xlarge = "g3.8xlarge"
    g3_16xlarge = "g3.16xlarge"
  }
}

variable "f1" {
  type = map(string)
  default = {
    f1_2xlarge = "f1.2xlarge"
    f1_4xlarge = "f1.4xlarge"
    f1_16xlarge = "f1.16xlarge"
  }
}

variable "vt1" {
  type = map(string)
  default = {
    vt1_2xlarge = "vt1.2xlarge"
    vt1_4xlarge = "vt1.4xlarge"
    vt1_16xlarge = "vt1.16xlarge"
  }
}
