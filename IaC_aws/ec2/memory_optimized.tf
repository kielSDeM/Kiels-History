variable "r6g" {
  type = map(string)
  default = {
    r6g_medium    = "r6g.medium"
    r6g_large     = "r6g.large"
    r6g_xlarge    = "r6g.xlarge"
    r6g_2xlarge   = "r6g.2xlarge"
    r6g_4xlarge   = "r6g.4xlarge"
    r6g_8xlarge   = "r6g.8xlarge"
    r6g_12xlarge  = "r6g.12xlarge"
    r6g_16xlarge  = "r6g.16xlarge"
    r6g_metal     = "r6g.metal"
    r6gd_large    = "r6gd.large"
    r6gd_xlarge   = "r6gd.xlarge"
    r6gd_2xlarge  = "r6gd.2xlarge"
    r6gd_4xlarge  = "r6gd.4xlarge"
    r6gd_8xlarge  = "r6gd.8xlarge"
    r6gd_12xlarge = "r6gd.12xlarge"
    r6gd_16xlarge = "r6gd.16xlarge"
    r6gd_metal    = "r6gd.metal"
  }

}

variable "r6i" {
  type = map(string)
  default = {
    r6i_large    = "r6i.large"
    r6i_xlarge   = "r6i.xlarge"
    r6i_2xlarge  = "r6i.2xlarge"
    r6i_4xlarge  = "r6i.4xlarge"
    r6i_8xlarge  = "r6i.8xlarge"
    r6i_12xlarge = "r6i.12xlarge"
    r6i_16xlarge = "r6i.16xlarge"
    r6i_24xlarge = "r6i.24xlarge"
    r6i_32xlarge = "r6i.32xlarge"
    r6i_metal    = "r6i.metal"
  }

}

variable "r5" {
  type = map(string)
  default = {
    r5_large     = "r5.large"
    r5_xlarge    = "r5.xlarge"
    r5_2xlarge   = "r5.2xlarge"
    r5_4xlarge   = "r5.4xlarge"
    r5_8xlarge   = "r5.8xlarge"
    r5_12xlarge  = "r5.12xlarge"
    r5_16xlarge  = "r5.16xlarge"
    r5_24xlarge  = "r5.24xlarge"
    r5_metal     = "r5.metal"
    r5d_large    = "r5d.large"
    r5d_xlarge   = "r5d.xlarge"
    r5d_2xlarge  = "r5d.2xlarge"
    r5d_4xlarge  = "r5d.4xlarge"
    r5d_8xlarge  = "r5d.8xlarge"
    r5d_12xlarge = "r5d.12xlarge"
    r5d_16xlarge = "r5d.16xlarge"
    r5d_24xlarge = "r5d.24xlarge"
    r5d_metal    = "r5d.metal"
  }

}

variable "r5a" {
  type = map(string)
  default = {
    r5a_large     = "r5a.large"
    r5a_xlarge    = "r5a.xlarge"
    r5a_2xlarge   = "r5a.2xlarge"
    r5a_4xlarge   = "r5a.4xlarge"
    r5a_8xlarge   = "r5a.8xlarge"
    r5a_12xlarge  = "r5a.12xlarge"
    r5a_16xlarge  = "r5a.16xlarge"
    r5a_24xlarge  = "r5a.24xlarge"
    r5ad_large    = "r5ad.large"
    r5ad_xlarge   = "r5ad.xlarge"
    r5ad_2xlarge  = "r5ad.2xlarge"
    r5ad_4xlarge  = "r5ad.4xlarge"
    r5ad_8xlarge  = "r5ad.8xlarge"
    r5ad_12xlarge = "r5ad.12xlarge"
    r5ad_16xlarge = "r5ad.16xlarge"
    r5ad_24xlarge = "r5ad.24xlarge"
  }
}
variable "r5b" {
  type = map(string)
  default = {
    r5b_large    = "r5b.large"
    r5b_xlarge   = "r5b.xlarge"
    r5b_2xlarge  = "r5b.2xlarge"
    r5b_4xlarge  = "r5b.4xlarge"
    r5b_8xlarge  = "r5b.8xlarge"
    r5b_12xlarge = "r5b.12xlarge"
    r5b_16xlarge = "r5b.16xlarge"
    r5b_24xlarge = "r5b.24xlarge"
    r5b_metal    = "r5b.metal"
  }
}
variable "r5n" {
  type = map(string)
  default = {
    r5n_large     = "r5n.large"
    r5n_xlarge    = "r5n.xlarge"
    r5n_2xlarge   = "r5n.2xlarge"
    r5n_4xlarge   = "r5n.4xlarge"
    r5n_8xlarge   = "r5n.8xlarge"
    r5n_12xlarge  = "r5n.12xlarge"
    r5n_16xlarge  = "r5n.16xlarge"
    r5n_24xlarge  = "r5n.24xlarge"
    r5n_metal     = "r5n.metal"
    r5dn_large    = "r5dn.large"
    r5dn_xlarge   = "r5dn.xlarge"
    r5dn_2xlarge  = "r5dn.2xlarge"
    r5dn_4xlarge  = "r5dn.4xlarge"
    r5dn_8xlarge  = "r5dn.8xlarge"
    r5dn_12xlarge = "r5dn.12xlarge"
    r5dn_16xlarge = "r5dn.16xlarge"
    r5dn_24xlarge = "r5dn.24xlarge"
    r5dn_metal    = "r5dn.metal"
  }
}
variable "r4" {
  type = map(string)
  default = {
    r4_large    = "r4.large"
    r4_xlarge   = "r4.xlarge"
    r4_2xlarge  = "r4.2xlarge"
    r4_4xlarge  = "r4.4xlarge"
    r4_8xlarge  = "r4.8xlarge"
    r4_16xlarge = "r4.16xlarge"
  }
}
variable "x2gd" {
  type = map(string)
  default = {
    x2gd_medium   = "x2gd.medium"
    x2gd_large    = "x2gd.large"
    x2gd_xlarge   = "x2gd.xlarge"
    x2gd_2xlarge  = "x2gd.2xlarge"
    x2gd_4xlarge  = "x2gd.4xlarge"
    x2gd_8xlarge  = "x2gd.8xlarge"
    x2gd_12xlarge = "x2gd.12xlarge"
    x2gd_16xlarge = "x2gd.16xlarge"
    x2gd_metal    = "x2gd.metal"
  }
}
variable "x2idn" {
  type = map(string)
  default = {
    x2idn_16xlarge = "x2idn.16xlarge"
    x2idn_24xlarge = "x2idn.24xlarge"
    x2idn_32xlarge = "x2idn.32xlarge"
    x2idn_metal    = "x2idn.metal"
  }
}

variable "x2iedn" {
  type = map(string)
  default = {
    x2iedn_xlarge   = "x2iedn.xlarge"
    x2iedn_2xlarge  = "x2iedn.2xlarge"
    x2iedn_4xlarge  = "x2iedn.4xlarge"
    x2iedn_8xlarge  = "x2iedn.8xlarge"
    x2iedn_16xlarge = "x2iedn.16xlarge"
    x2iedn_24xlarge = "x2iedn.24xlarge"
    x2iedn_32xlarge = "x2iedn.32xlarge"
    x2iedn_metal    = "x2iedn.metal"
  }
}

variable "x2iezn" {
  type = map(string)
  default = {
    x2iezn_2xlarge  = "x2iezn.2xlarge"
    x2iezn_4xlarge  = "x2iezn.4xlarge"
    x2iezn_6xlarge  = "x2iezn.6xlarge"
    x2iezn_8xlarge  = "x2iezn.8xlarge"
    x2iezn_16xlarge = "x2iezn.12xlarge"
    x2iezn_metal    = "x2iezn.metal"
  }
}

variable "x1e" {
  type = map(string)
  default = {
    x1e_xlarge   = "x1e.xlarge"
    x1e_2xlarge  = "x1e.2xlarge"
    x1e_4xlarge  = "x1e.4xlarge"
    x1e_8xlarge  = "x1e.8xlarge"
    x1e_16xlarge = "x1e.16xlarge"
    x1e_32xlarge = "x1e.32xlarge"

  }

}

variable "x1" {
  type = map(string)
  default = {
    x1_16xlarge = "x1.16xlarge"
    x1_32xlarge = "x1.32xlarge"
  }

}

variable "u-tb" {
  type = map(string)
  default = {
    u_6tb1_56xlarge   = "u-6tb1.56xlarge"
    u_6tb1_112xlarge  = "u-6tb1.112xlarge"
    u_6tb1_metal      = "u-6tb1.metal**"
    u_9tb1_112xlarge  = "u-9tb1.112xlarge"
    u_9tb1_metal      = "u-9tb1.metal**"
    u_12tb1_112xlarge = "u-12tb1.112xlarge"
    u_12tb1_metal     = "u-12tb1.metal**"
    u_18tb1_metal     = "u-18tb1.metal"
    u_24tb1_metal     = "u-24tb1.metal"
  }
}

variable "z1d" {
  type = map(string)
  default = {
    z1d_large    = "z1d.large"
    z1d_xlarge   = "z1d.xlarge"
    z1d_2xlarge  = "z1d.2xlarge"
    z1d_4xlarge  = "z1d.3xlarge"
    z1d_8xlarge  = "z1d.6xlarge"
    z1d_16xlarge = "z1d.12xlarge"
    z1d_metal    = "z1d.metal"

  }

}
