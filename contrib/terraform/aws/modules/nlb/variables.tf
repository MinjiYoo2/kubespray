variable "aws_cluster_name" {
  description = "Name of Cluster"
}

variable "aws_vpc_id" {
  description = "AWS VPC ID"
}

variable "aws_elb_api_port" {
  description = "Port for AWS ELB"
}

variable "k8s_secure_api_port" {
  description = "Secure Port of K8S API Server"
}

variable "aws_avail_zones" {
  description = "Availability Zones Used"
  type        = list(string)
}

variable "default_tags" {
  description = "Tags for all resources"
  type        = map(string)
}

variable "aws_elb_api_internal" {
  description   = "AWS ELB Scheme Internet-facing/Internal"
  type          = bool
  default	= true
}

variable "aws_elb_api_public_subnet" {
  description   = "where to attach AWS ELB API endpoint (public/private subnet)"
  type          = bool
  default	= true
}

variable "aws_elb_api_subnets" {
  description   = "List of subnets to be attached to ELB API"
  type          = list(string)
}
