variable "region" {
  description = "AWS region where the resources will be provisioned."
  default     = "us-east-2"
}

variable "vpc_name" {
  description = "Name of the VPC."
  default     = "eks-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC."
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  description = "List of private subnets CIDR blocks."
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets" {
  description = "List of public subnets CIDR blocks."
  type        = list(string)
  default     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
}

variable "cluster_name" {
  description = "Name of the EKS cluster."
  default     = "eks-cluster"
}

variable "node_groups" {
  description = "Map of node groups configuration."
  type        = map(object({
    name           = string
    instance_types = list(string)
    min_size       = number
    max_size       = number
    desired_size   = number
  }))
  default = {
    one = {
      name           = "node-group-1"
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 3
      desired_size   = 2
    }
    two = {
      name           = "node-group-2"
      instance_types = ["t3.small"]
      min_size       = 1
      max_size       = 2
      desired_size   = 1
    }
  }
}

output "eks_cluster_name" {
  description = "Name of the created EKS cluster."
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "Endpoint URL of the EKS cluster."
  value       = module.eks.cluster_endpoint
}

output "vpc_id" {
  description = "ID of the created VPC."
  value       = module.vpc.vpc_id
}

output "private_subnets" {
  description = "List of private subnets in the VPC."
  value       = module.vpc.private_subnets
}

output "public_subnets" {
  description = "List of public subnets in the VPC."
  value       = module.vpc.public_subnets
}
