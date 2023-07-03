region          = "us-east-2"
vpc_name        = "eks-vpc"
vpc_cidr        = "10.0.0.0/16"
private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
public_subnets  = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
cluster_name    = "eks-cluster"

node_groups = {
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
