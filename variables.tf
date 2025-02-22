##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  type        = string
  description = "(Optional) AWS Region to use. Default: us-east-1"
  default     = "us-west-2"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module. Default: globo-dev"
}

variable "cidr_block" {
  type        = string
  description = "(Required) The CIDR block for the VPC. Default:10.42.0.0/16"
  #default     = "10.42.0.0/16"
}

variable "public_subnets" {
  type        = map(string)
  description = "(Required) Map of public subnets to create with CIDR blocks. Key will be used as subnet name with prefix. Default: {subnet-1 ="
  # default = {
  #   public-1 = "10.42.10.0/24"
  #   public-2 = "10.42.11.0/24"
  # }
}

variable "environment" {
  type        = string
  description = "(Required) Environment to use for all resources."
  #default     = "development"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources."
}
variable "AWS_SECRET_ACCESS_KEY" {
  description = "The AWS secret access key"
  type        = string
  sensitive   = true
}