variable "t4g" {
  type = map(string)
  default = {
    # vCPU: 2 Memory(GiB): 0.5
    t4g_nano = "t4g.nano"
    # vCPU: 2 Memory(GiB): 1
    t4g_micro = "t4g.micro"
    # vCPU: 2 Memory(GiB): 2
    t4g_small = "t4g.small"
    # vCPU: 2 Memory(GiB): 4
    t4g_medium = "t4g.medium"
    # vCPU: 2 Memory(GiB): 8
    t4g_large = "t4.large"
    #vCPU: 4 Memory(GiB): 16
    t4g_xlarge = "t4.large"
    #vCPU: 8 Memory(GiB): 32
    t4g_2xlarge = "t4g_2xlarge"

  }

}
# burstable CPU performance
variable "T3" {
  type = map(string)
  default = {
    # vCPU: 2 Memory(GiB): 0.5
    t3_nano = "t3.nano"
    # vCPU: 2 Memory(GiB): 1
    t3_micro = "t3.micro"
    # vCPU: 2 Memory(GiB): 2
    t3_small = "t3.small"
    # vCPU: 2 Memory(GiB): 4
    t3_medium = "t3.medium"
    # vCPU: 2 Memory(GiB): 8
    t3_large = "t3.large"
    # vCPU: 4 Memory(GiB): 16
    t3_xlarge = "t3.xlarge"
    # vCPU: 8 Memory(GiB): 32
    t3_2xlarge = "t3.2xlarge"

  }

}

variable "T3a" {
  type = map(string)
  default = {
    # vCPU: 2 Memory(GiB): 0.5
    t3a_nano = "t3a.nano"
    # vCPU: 2 Memory(GiB): 1
    t3a_micro = "t3a.micro"
    # vCPU: 2 Memory(GiB): 2 
    t3a_small = "t3a.small"
    # vCPU: 2 Memory(GiB): 4 
    t3a_medium = "t3a.medium"
    # vCPU: 2 Memory(GiB): 8
    t3a_large = "t3a.large"
    # vCPU: 4 Memory(GiB): 16
    t3a_xlarge = "t3a.xlarge"
    # vCPU: 8 Memory(GiB): 32
    t3a_2xlarge = "t3a.2xlarge"

  }
}

variable "T2" {
  type = map(string)
  default = {
    # vCPU: 1 Memory(GiB): 0.5
    t2_nano = "t2.nano"
    # vCPU: 1 Memory(GiB): 1
    t2_micro = "t2.micro"
    # vCPU: 1 Memory(GiB): 2
    t2_small = "t2.small"
    # vCPU: 2 Memory(GiB): 4
    t2_medium = "t2.medium"
    # vCPU: 2 Memory(GiB): 8
    t2_large = "t2.large"
    # vCPU: 4 Memory(GiB): 16
    t2_xlarge = "t2.xlarge"
    # vCPU: 8 Memory(GiB): 32
    t2_2xlarge = "t2.2xlarge"

  }
}
variable "M6g" {
  type = map(string)
  default = {
    # vCPU: 1 Memory(GiB): 4
    m6g_medium = "m6g.medium"
    # vCPU: 2 Memory(GiB): 8
    m6g_large = "m6g.large"
    # vCPU: 4 Memory(GiB): 16
    m6g_xlarge = "m6g.xlarge"
    # vCPU: 8 Memory(GiB): 32
    m6g_2xlarge = "m6g.2xlarge"
    # vCPU: 16 Memory(GiB): 64
    m6g_4xlarge = "m6g.4xlarge"
    # vCPU: 32 Memory(GiB): 128
    m6g_8xlarge = " m6g.8xlarge"
    # vCPU: 48 Memory(GiB): 182
    m6g_12xlarge = "m6g.12xlarge"
    # vCPU: 64 Memory(GiB): 256
    m6g_16xlarge = "m6g.16xlarge"
    # vCPU: 64 Memory(GiB): 256
    m6g_metal = "m6g.metal"
    # vCPU: 1 Memory(GiB): 4
    m6gd_medium = "m6gd.medium"
    # vCPU: 2 Memory(GiB): 8
    m6gd_large = "m6gd.large"
    # vCPU: 64 Memory(GiB): 16
    m6gd_xlarge = "m6gd.xlarge"
    # vCPU: 64 Memory(GiB): 32
    m6gd_2xlarge = "m6gd.2xlarge"
    # vCPU: 64 Memory(GiB): 64
    m6gd_4xlarge = "m6gd.4xlarge"
    # vCPU: 64 Memory(GiB): 128
    m6gd_8xlarge = "m6gd.8xlarge"
    # vCPU: 64 Memory(GiB): 192
    m6gd_12xlarge = "m6gd.12xlarge"
    # vCPU: 64 Memory(GiB): 256
    m6gd_16xlarge = "m6gd.16xlarge"
    # vCPU: 64 Memory(GiB): 256
    m6gd_metal = "m6gd.metal"
  }
}
variable "M6i" {
  type = map(string)
  default = {
    # vCPU: 2 Memory(GiB): 8
    m6i_large = "m6i.large"
    # vCPU: 4 Memory(GiB): 16
    m6i_xlarge = "m6i.xlarge"
    # vCPU: 8 Memory(GiB): 32
    m6i_2xlarge = "m6i.2xlarge"
    # vCPU: 16 Memory(GiB): 64
    m6i_4xlarge = "m6i.4xlarge"
    # vCPU: 32 Memory(GiB): 128
    m6i_8xlarge = " m6i.8xlarge"
    # vCPU: 48 Memory(GiB): 182
    m6i_12xlarge = "m6i.12xlarge"
    # vCPU: 64 Memory(GiB): 256
    m6i_16xlarge = "m6i.16xlarge"
    # vCPU: 96 Memory(GiB): 384
    m6i_24xlarge = "m6i.24xlarge"
    # vCPU: 128 Memory(GiB): 512
    m6i_32xlarge = "m6i.32xlarge"

  }

}

variable "M5" {
  type = map(string)
  default = {
    m5_large     = "m5.large"
    m5_xlarge    = "m5.xlarge"
    m5_2xlarge   = "m5.2xlarge"
    m5_4xlarge   = "m5.4xlarge"
    m5_8xlarge   = "m5.8xlarge"
    m5_12xlarge  = "m5.12xlarge"
    m5_16xlarge  = "m5.16xlarge"
    m5_24xlarge  = "m5.32xlarge"
    m5d_large    = "m5d.large"
    m5d_xlarge   = "m5d.xlarge"
    m5d_2xlarge  = "m5d.2xlarge"
    m5d_4xlarge  = "m5.4xlarge"
    m5d_8xlarge  = "m5d.8xlarge"
    m5d_16xlarge = "m5d.16xlarge"
    m5d_24xlarge = "m5d.24xlarge"
    m5d_metal    = "m5d.metal"
  }
}

variable "M5a" {
  type = map(string)
  default = {
    m5a_large     = "m5.large"
    m5a_xlarge    = "m5.xlarge"
    m5a_2xlarge   = "m5.2xlarge"
    m5a_4xlarge   = "m5a.4xlarge"
    m5a_8xlarge   = "m5a.8xlarge"
    m5a_12xlarge  = "m5a.12xlarge"
    m5a_16xlarge  = "m5a.16xlarge"
    m5a_24xlarge  = "m5a.32xlarge"
    m5ad_large    = "m5ad.large"
    m5ad_xlarge   = "m5ad.xlarge"
    m5ad_2xlarge  = "m5ad.2xlarge"
    m5ad_4xlarge  = "m5ad.4xlarge"
    m5ad_8xlarge  = "m5ad.8xlarge"
    m5ad_16xlarge = "m5ad.16xlarge"
    m5ad_24xlarge = "m5ad.24xlarge"
  }
}
variable "M5n" {
  type = map(string)
  default = {
    m5n_large     = "m5n.large"
    m5nn_xlarge   = "m5n.xlarge"
    m5n_2xlarge   = "m5n.2xlarge"
    m5n_4xlarge   = "m5n.4xlarge"
    m5n_8xlarge   = "m5n.8xlarge"
    m5n_12xlarge  = "m5n.12xlarge"
    m5n_16xlarge  = "m5n.16xlarge"
    m5n_24xlarge  = "m5n.32xlarge"
    m5dn_large    = "m5dn.large"
    m5dn_xlarge   = "m5d.xlarge"
    m5dn_2xlarge  = "m5dn.2xlarge"
    m5dn_4xlarge  = "m5dn.4xlarge"
    m5dn_8xlarge  = "m5dn.8xlarge"
    m5dn_16xlarge = "m5dn.16xlarge"
    m5dn_24xlarge = "m5dn.24xlarge"
    m5dn_metal    = "m5dn.metal"
  }
}

variable "M5zn" {
  type = map(string)
  default = {
    m5zn_large    = "m5zn.large"
    m5zn_xlarge   = "m5zn.xlarge"
    m5zn_2xlarge  = "m5zn.2xlarge"
    m5zn_3xlarge  = "m5zn.3xlarge"
    m5zn_6xlarge  = "m5zn.6xlarge"
    m5zn_12xlarge = "m5zn.12xlarge"
    m5zn_metal    = "m5zn.metal"
  }
}

variable "M4" {
  type = map(string)
  default = {
    m4_large    = "m4.large"
    m4_xlarge   = "m4.xlarge"
    m4_2xlarge  = "m4.2xlarge"
    m4_4xlarge  = "m4.6xlarge"
    m4_10xlarge = "m4.12xlarge"
    m4_16xlarge = "m4.metal"
  }
}

variable "A1" {
  type = map(string)
  default = {
    a1_medium  = "a1.medium"
    a1_large   = "a1.large"
    a1_xlarge  = "a1.xlarge"
    a1_2xlarge = "a1.2xlarge"
    a1_4xlarge = "a1.4xlarge"
    a1_metal   = "a1.metal"
  }

}
