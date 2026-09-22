variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-southeast1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "asia-southeast1-a"
}

variable "network_name" {
  description = "VPC name"
  type        = string
  default     = "terraform-lab-vpc01"
}

variable "subnet_cidr" {
  description = "Subnet CIDR"
  type        = string
  default     = "10.10.0.0/24"
}

variable "cluster_name" {
  description = "GKE cluster name"
  type        = string
  default     = "terraform-lab-gke01"
}