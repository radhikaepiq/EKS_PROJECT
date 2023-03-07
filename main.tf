provider "aws" {
  region = "ap-south-1"
}

module "EKS_vpc" {
  # source      = "../modules/vpc"
  source = "git::"
  vpc_cidr    = var.vpc_cidr
  Namevpc  = var.Namevpc
  Owner = var.Owner
  Purpose = var.Purpose
}
# module "vpc" {
#   source = "git::https://example.com/vpc.git"
# }

# module "EKS_igw" {
#   source      = "../modules/internetgw"
#   vpc_id      = "${module.EKS_vpc.vpc_id}"
#   NameIG  = var.NameIG
#   Owner = var.Owner
#   Purpose = var.Purpose
# }

# module "EKS_rttbl" {
#   source      = "../modules/routetable"
#   vpc_id      = "${module.EKS_vpc.vpc_id}"
#   igw_id = "${module.EKS_igw.igw_id}"
#   cidr_block = var.cidr_block
#   NameRT  = var.NameRT
#   Owner = var.Owner
#   Purpose = var.Purpose
#   }

#   module "EKS_SCGP" {
#   source      = "../modules/securitygrp"
#   vpc_id      = "${module.EKS_vpc.vpc_id}"
#   ingress_rules    = var.ingress_rules
#   NameSG  = var.NameSG
#   Owner  = var.Owner
#   Purpose  = var.Purpose
#   protocal = var.protocal
#   secgrp_id   = "${module.EKS_SCGP.secgrp_id}"
#   }

#   module "EKS_subnets" {
#   source      = "../modules/subnets" 
#   vpc_id    =  "${module.EKS_vpc.vpc_id}"
#   subnets = var.subnets
#   subnettag  = var.subnettag
#   Owner  = var.Owner
#   Purpose  = var.Purpose
#   }
#    module "EKS_Pvtsubnets" {
#   source      = "../modules/pvtsubnets" 
#   vpc_id    =  "${module.EKS_vpc.vpc_id}"
#   pvtsubnets = var.pvtsubnets
#   pvtsubnettag  = var.pvtsubnettag
#   Owner  = var.Owner
#   Purpose  = var.Purpose
#   }

# module "EKS_routeassociation" {
#   source      = "../modules/routeassociation"
#   route_table_id = "${module.EKS_rttbl.route_table_id}"
#   subnet_id = "${module.EKS_subnets.subnet_id}" 
# }

output "infra"{
  value = [module.EKS_vpc.vpc_id,module.EKS_igw.igw_id,module.EKS_rttbl.route_table_id,module.EKS_subnets.subnet_id,module.EKS_routeassociation.routeassociation_id,module.EKS_SCGP.secgrp_id,module.EKS_Pvtsubnets.pvtsubnet_id]
}
