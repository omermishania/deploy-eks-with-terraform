# Terraform AWS EKS Infrastructure

This project provisions an Amazon EKS (Elastic Kubernetes Service) cluster on AWS using Terraform. The infrastructure includes a VPC, subnets, and managed node groups for the EKS cluster.

## Prerequisites

Before running the Terraform configuration, make sure you have the following prerequisites set up:

- AWS CLI: Make sure you have AWS CLI installed and configured with appropriate access keys.
- Terraform: Install Terraform on your local machine. The version used in this project is <version>.

## Usage

1. Clone the repository:
```shell
git clone https://github.com/your-repo-url.git
cd terraform-aws-eks
```

2. Set the required variable values:

Edit the `terraform.tfvars` file and provide values for the variables according to your requirements.

3. Initialize and run Terraform:

```shell
terraform init
terraform apply
```

4. Review the planned changes and enter `yes` to apply the changes and provision the infrastructure.

5. Access the EKS cluster:

Once the Terraform apply is complete, you can access the EKS cluster using the output values provided by Terraform.

- EKS Cluster Name: `<eks_cluster_name>`
- EKS Cluster Endpoint: `<eks_cluster_endpoint>`

6. Clean up

To tear down the infrastructure and delete all resources created by Terraform, run the following command:

```shell
terraform destroy
```

Review the planned actions and enter `yes` to proceed with the destruction.

## Customization

The project provides customizable options through variables in the `terraform.tfvars` file. You can modify these variables to adapt the infrastructure to your specific needs.

- `region`: AWS region where the resources will be provisioned.
- `vpc_name`: Name of the VPC.
- `vpc_cidr`: CIDR block for the VPC.
- `private_subnets`: List of private subnets CIDR blocks.
- `public_subnets`: List of public subnets CIDR blocks.
- `cluster_name`: Name of the EKS cluster.
- `node_groups`: Map of node groups configuration.

Please refer to the `variables.tf` file for more details on each variable.

## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
