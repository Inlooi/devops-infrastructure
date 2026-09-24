variable "region" {
  description = "Cloud provider region"
  type        = string
  default     = "eu-central-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type for app servers"
  type        = string
  default     = "t3.micro"
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
  default     = "infra-cluster"
}
