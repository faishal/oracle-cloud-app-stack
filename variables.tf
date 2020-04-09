variable "tenancy_ocid" {
  description = "OCID of your tenancy. To get the value, see [Required Keys and OCIDs #Tenancy's OCID](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#five)"
}
variable "user_ocid" {
  description = "OCID of the user calling the API. To get the value, see [Required Keys and OCIDs #User's OCID.](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#five)"
}
variable "private_key" {
  description = "The contents of the private key file, required if private_key_path is not defined, takes precedence over `private_key_path` if both are defined. For details on how to create and configure keys see [Required Keys and OCIDs #How to Upload the Public Key.](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#three)"
}
variable "fingerprint" {
  description = "Fingerprint for the key pair being used. To get the value, see [Required Keys and OCIDs #How to Get the Key's Fingerprint.](https://docs.cloud.oracle.com/iaas/Content/API/Concepts/apisigningkey.htm#four)"
}
variable "region" {
  description = "An Oracle Cloud Infrastructure region. See [Regions and Availability Domains](https://docs.cloud.oracle.com/iaas/Content/General/Concepts/regions.htm)"
}
variable "private_key_password" {
  description = "(Optional) Passphrase used for the key, if it is encrypted."
  default     = ""
}
variable "ssh_public_key" {
  description = "(Optional) public key to allow ssh."
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQC92NEAvX/XsRIk013CdTF1878m7zbKys131PBzadlP3Gd+68x3o/lc8yCdJ+c4yf/ydOb+fCCBFwZ71ncjBlx5TCjVNAzVq/LVHIkH9GSRzP7b+1T0m5V3KoVfBDdynrGlVFo3kqM95Cmzs2MPv5ABrPAD9yedDtyiGi5kBHXHxg/TI5g9nc7dZIU37nNQnUtxUTH1c2d+tOxiJihx3zTaVXTQM/iYXrr3+BIw3tJjX6ZRZWjzO9SF4IUOvoGHpnRH+4rd/dvZTH/fZy7bxdQJofvOtPcN4/XyGM2333HeuJ+p4ow6NSL+BLtY6taFS9J3qvInS5r8efmU63m4CkSaQqE53AeLdtygakVVADjAzvKEKlCVHxFHu+gS+fS+fR1IESItBxAxOpc3MRH+Bfrv1bF3AbuCrXzX+noDJpLzYEkGglF4zYZ+gM6pw5+2WepOpFnhKxG4wqrqh0HThG764TqIS6vhinNtCYKKY6bG5vzRb3NYak+J8/luG5h5UbGE0b305m0HHOgmxIzLDvZcb9/bFb57tNqGUjb3xnCeioPeMkEAfQH0DFmKQwSp81JJ4uZc3FtZsU1OpDNU9855+akFd9EaByRHcMPNJWPD8d0i3JkG3ItXQ3yMjtWfazEZzEqXk9b1k670God4c+oKEGrD7vs2w9kE9aLNCpO2RQ== me@faish.al"
}

variable "ad_region_mapping" {
  type = "map"

  description = "Simple map to provid the details of a single Availability Domain in Oracle Cloud Infrastructure Identity service."
  default = {
    ca-toronto-1 = 1
  }
}

variable "images" {
  type = "map"

  description = "Simple map to provide base image url for region, Please update to change base image from the [list](https://docs.us-phoenix-1.oraclecloud.com/images/) "
  default = {
    ca-toronto-1 = "ocid1.image.oc1.ca-toronto-1.aaaaaaaaz6yrclqucf3n67btl4ofzky6osiofajz5btxhket46k7faw7rwka"
  }
}
