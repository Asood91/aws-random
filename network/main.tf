module "network" {
  #  source       = "./modules/aws-network/"
  source   = "C:/Users/anusood/OneDrive - Deloitte (O365D)/Documents/Projects/repos/awsiac/modules/aws-network"
  project  = var.project
  for_each = var.net

  vpc_cidr            = each.value.vpc_cidr
  vpc_name            = each.value.vpc_name
  public_cidr         = each.value.public_cidr
  private_cidr        = each.value.private_cidr
  public_subnet_name  = each.value.public_subnet_name
  private_subnet_name = each.value.private_subnet_name
  public_RT_name      = each.value.public_RT_name
  private_RT_name     = each.value.private_RT_name
}


# module "ec2-instances" {
#   #   source   = "./modules/aws-compute"
#   source   = "C:/Users/anusood/OneDrive - Deloitte (O365D)/Documents/Projects/awsiac/modules/aws-compute"
#   project  = var.project
#   for_each = var.net

#   ami          = each.value.ami
#   instanceType = each.value.instanceType
#   key_name     = each.value.key_name
#   public_cidr  = each.value.public_cidr
#   vpc_name     = each.value.vpc_name
#   sg           = module.SG["${each.key}"].SGID
#   depends_on = [
#     module.network
#   ]
# }

# module "SG" {
#   #  source   = "./modules/aws-security-group"
#   source  = "C:/Users/anusood/OneDrive - Deloitte (O365D)/Documents/Projects/awsiac/modules/aws-security-group"
#   project = var.project

#   for_each = var.net

#   vpc_id       = module.network["${each.key}"].vpcID
#   vpc_name     = each.value.vpc_name
#   sg_cidr_icmp = each.value.sg_cidr_icmp
#   sg_cidr_ssh  = each.value.sg_cidr_ssh
# }

# module "vpn_gateway" {
#   #  soursource = "./modules/aws-vpn_gateway"
#   source       = "C:/Users/anusood/OneDrive - Deloitte (O365D)/Documents/Projects/awsiac/modules/aws-vpn_gateway"
#   project      = var.project
#   for_each = var.net
#     vpc_id       = module.network["${each.key}"].vpcID
#     cx_public_ip = var.cx_public_ip
#     onprem_cidr  = var.onprem_cidr
# }

# module "WAF" {
#   #  source = "./modules/aws-WAF"
#   source       = "C:/Users/anusood/OneDrive - Deloitte (O365D)/Documents/Projects/awsiac/modules/aws-WAF"
#   project      = var.project
#   whitelist_IP = var.whitelist_IP
# }




