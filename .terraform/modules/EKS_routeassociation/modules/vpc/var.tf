
variable "vpc_cidr" {
  # default = "10.0.0.0/16"
  type = string
}


variable "Namevpc" {
 #default = "EKS_vpc"
}
variable "Owner" {
  type = string
  description = "Value used for tagging Owner"
# default = "RadhikaN"
}
#
variable "Purpose" {
  type = string
  description = "Purpose of the infrastructure creation"
#  default = "EKSProject"
}

variable "vpc_cidr" {
  # default = "10.0.0.0/16"
  type = string
}


variable "Namevpc" {
 #default = "EKS_vpc"
}
variable "Owner" {
  type = string
  description = "Value used for tagging Owner"
<<<<<<< HEAD
# # default = "RadhikaN"
=======
# default = "RadhikaN"
>>>>>>> 2a76104a650b15ecaa1e95fa07a7852194cb7b60
}
#
variable "Purpose" {
  type = string
  description = "Purpose of the infrastructure creation"
<<<<<<< HEAD
# #  default = "EKSProject"
=======
#  default = "EKSProject"
>>>>>>> 2a76104a650b15ecaa1e95fa07a7852194cb7b60
}

