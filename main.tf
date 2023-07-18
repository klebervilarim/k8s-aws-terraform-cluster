variable "AWS_ACCESS_KEY" {

}

variable "AWS_SECRET_KEY" {

}

variable "AWS_REGION" {
  default = "us-east-1"
}

module "k8s-cluster" {
  ssk_key_pair_name      = var.ssk_key_pair_name
  uuid                   = var.uuid
  environment            = var.environment
  vpc_id                 = var.vpc_id
  vpc_private_subnets    = var.vpc_private_subnets
  vpc_public_subnets     = var.vpc_public_subnets
  vpc_subnet_cidr        = var.vpc_subnet_cidr
  PATH_TO_PUBLIC_LB_CERT = var.PATH_TO_PUBLIC_LB_KEY
  PATH_TO_PUBLIC_LB_KEY  = var.PATH_TO_PUBLIC_LB_KEY
  install_nginx_ingress  = true
  install_longhorn       = true
  source                 = "github.com/garutilorenzo/k8s-aws-terraform-cluster"
}

