variable "c6g" {
  type = map(string)
  default = {
    c6g_medium = "c6g.medium"
    c6g_large = "c6g.large"
    c6g_xlarge = "c6g.xlarge"
    c6g_2xlarge = "c6g.2xlarge"
    c6g_4xlarge = "c6g.4xlarge"
    c6g_8xlarge = "c6g.8xlarge"
    c6g_12xlarge = "c6g.12xlarge"
    c6g_16xlarge = "c6g.16xlarge"
    c6g_metal = "c6g.metal"
    c6gd_medium = "c6gd.medium"
    c6gd_large = "c6gd.large"
    c6gd_xlarge = "c6gd.xlarge"
    c6gd_2xlarge = "c6gd.2xlarge"
    c6gd_4xlarge = "c6gd.4xlarge"
    c6gd_8xlarge = "c6gd.8xlarge"
    c6gd_12xlarge = "c6gd.12xlarge"
    c6gd_16xlarge = "c6gd.16xlarge"
    c6gd_metal = "c6gd.metal"
  }
}

variable "c6gn" {
  type = map(string)
  default = {
    c6gn_medium = "c6gn.medium"
    c6gn_large = "c6gn.large"
    c6gn_xlarge = "c6gn.xlarge"
    c6gn_2xlarge = "c6gn.2xlarge"
    c6gn_4xlarge = "c6gn.4xlarge"
    c6gn_8xlarge = "c6gn.8xlarge"
    c6gn_12xlarge = "c6gn.12xlarge"
    c6gn_16xlarge = "c6gn.16xlarge"

  }
}
variable "c6i" {
  type = map(string)
  default = {
    c6i_large = "c6g.large"
    c6i_xlarge = "c6g.xlarge"
    c6i_2xlarge = "c6g.2xlarge"
    c6i_4xlarge = "c6g.4xlarge"
    c6i_8xlarge = "c6g.8xlarge"
    c6i_12xlarge = "c6g.12xlarge"
    c6i_16xlarge = "c6g.16xlarge"
    c6i_24xlarge = "c6g.24xlarge"
    c6i_32xlarge = "c6i.32xlarge"
  }
}


variable "c5" {
  type = map(string)
  default = {
    
    c5_large = "c5.large"
    c5_xlarge = "c5.xlarge"
    c5_2xlarge = "c5.2xlarge"
    c5_4xlarge = "c5.4xlarge"
    c5_9xlarge = "c5.9xlarge"
    c5_12xlarge = "c5.12xlarge"
    c5_18xlarge = "c5.18xlarge"
    c5_24xlarge = "c5.24xlarge"
    c5_metal = "c5.metal"
    c5d_large = "c5d.large"
    c5d_xlarge = "c5d.xlarge"
    c5d_2xlarge = "c5d.2xlarge"
    c5d_4xlarge = "c5d.4xlarge"
    c5d_9xlarge = "c5d.9xlarge"
    c5d_12xlarge = "c5d.12xlarge"
    c5d_18xlarge = "c5d.18xlarge"
    c5d_24xlarge = "c5d.24xlarge"
    c5d_metal = "c5d.metal"
  }
}

variable "c5a" {
  type = map(string)
  default = {
    c5a_large = "c5a.large"
    c5a_xlarge = "c5a.xlarge"
    c5a_2xlarge = "c5a.2xlarge"
    c5a_4xlarge = "c5a.4xlarge"
    c5a_8xlarge = "c5a.8xlarge"
    c5a_12xlarge = "c5a.12xlarge"
    c5a_16xlarge = "c5a.16xlarge"
    c5a_24xlarge = "c5a.24_xlarge"
    c5ad_large = "c5ad.large"
    c5ad_xlarge = "c5ad.xlarge"
    c5ad_2xlarge = "c5ad.2xlarge"
    c5ad_4xlarge = "c5ad.4xlarge"
    c5ad_8xlarge = "c5ad.8xlarge"
    c5ad_12xlarge = "c5ad.12xlarge"
    c5ad_16xlarge = "c5ad.16xlarge"
    c5ad_24xlarge = "c5ad.24xlarge"
  }
}

variable "c5" {
  type = map(string)
  default = {
    
    c5n_large = "c5.large"
    c5n_xlarge = "c5n.xlarge"
    c5n_2xlarge = "c5n.2xlarge"
    c5n_4xlarge = "c5n.4xlarge"
    c5n_9xlarge = "c5n.9xlarge"
    c5n_18xlarge = "c5n.18xlarge"
    c5n_metal = "c5n.metal"
  }
}
#High frequency Intel Xeon E5-2666 v3 (Haswell), EBS-only
variable "c4" {
  type = map(string)
  default = {
    c4_large = "c5.large"
    c4_xlarge = "c5.4xlarge"
    c4_2xlarge = "c5_metal"
    c4_4xlarge = "c5d.large"
    c4_8xlarge = "c5d.4xlarge"
  }
}
