
variable "region" {
  type        = string
  description = "(Optional) AWS Region to deploy in. Defaults to us-east-1."
  default     = "eu-central-1"
}

variable "prefix" {
  type        = string
  description = "(Required) Prefix to use for all resources in this module."
}

variable "environment" {
  type        = string
  description = "(Required) Environment of all resources"
}

variable "billing_code" {
  type        = string
  description = "(Required) Billing code for network resources"
}

# Application variables

variable "ip_range" {
  default = "0.0.0.0/0"
}

variable "instance_type" {
  type        = string
  description = "(Optional) EC2 Instance type to use for web app. Defaults to t3.micro."
  default     = "t3.micro"
}

variable "api_key_secret_id" {
  type        = string
  description = "(Required) Secret id for the API key for web app to talk to SaaS platform."
}

variable "tfe_workspace" {
  type        = string
  description = "(Required) Terraform Cloud workspace to use for remote state."
}

variable "tfe_organization" {
  type        = string
  description = "(Required) Terraform Cloud organization to use for remote state."
}

variable "ec2_role_name" {
  type        = string
  description = "(Required) Name of IAM Role to attach to EC2 instances."
}

variable "playbook_repository" {
  type        = string
  description = "(Required) URI of Repository to use for Ansible playbooks."
}
