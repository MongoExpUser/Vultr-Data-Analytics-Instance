# 0. Organization identifier, project, environmental and creator  variables
variable "org_identifier" {
  type = string
}

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "creator" {
  description = "Creator of the resource(s): could be e-mail address of creator or simply Terraform."
  type = string
}

variable "create_vultr_resources" {
  description = "Determine if a resource is created or not: can be 1 (true) or 0 (false)."
  type = number
  default = 1
}


# 1. firewall_group variable
variable "firewall_group_description" {
  type = string
}


# 2. firewall rules variable
variable "protocols" {
  # length must equal length of "ports" variable
  type = list(string)
}

variable "ip_types" {
  # length must equal length of "ports" variable
  type = list(string)
}

variable "subnets" {
  # length must equal length of "ports" variable
  type = list(string)
}

variable "subnet_sizes" {
  # length must equal length of "ports" variable
  type = list(string)
}

variable "ports" {
  type = list(string)
}

variable "notes" {
  # length must equal length of "ports" variable
  type = list(string)
}


# 3. ssh key variables
variable "ssh_key_name" {
  type = string
}

variable "ssh_key" {
  type = string
}


# 4. instance variables
variable "region" {
  type = string
}

variable "plan" {
  type = string
}

variable "os_id" {
  type = string
}

variable "script_id" {
  type = string
}

variable "enable_ipv6" {
  type = bool
}

variable "ddos_protection" {
  type = bool
}

variable "activation_email" {
  type = bool
}

variable "tags" {
  # length must equal length of "labels" variable
  type = list(string)
}

variable "labels" {
  type = list(string)
}
