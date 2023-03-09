## Variables for route tables
variable "vpc_id" { type  = string  }
variable "igw_id" { type  = string  }
variable "cidr_block" { type  = string  }

variable "NameRT" {
    type = string
}
variable "Owner" {
  type = string
}

variable "Purpose" {
  type = string
}