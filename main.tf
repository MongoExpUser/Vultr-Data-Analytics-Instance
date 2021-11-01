# 0. configuration for provider(s) and backend
terraform {

  required_providers {
    vultr = {
      source          = "vultr/vultr"
    }
    
    aws = {
      source = "hashicorp/aws"
    }
  }
  
  backend "s3" {
    bucket  = "vultr-tf-states"
    key     = "data-analytics-instance-terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}


# 1.  create firewall_group
resource "vultr_firewall_group" "firewall_group" {
  description             = var.firewall_group_description
}


# 2. create firewall rules
resource "vultr_firewall_rule" "firewall_rule" {
  depends_on              = [vultr_firewall_group.firewall_group]
  count                   = length(var.ports) * var.create_vultr_resources
  firewall_group_id       = vultr_firewall_group.firewall_group.id
  protocol                = var.protocols[count.index]    
  ip_type                 = var.ip_types[count.index]     
  subnet                  = var.subnets[count.index]      
  subnet_size             = var.subnet_sizes[count.index] 
  port                    = var.ports[count.index]        
  notes                   = var.notes[count.index]       
}


# 3. create ssh key
resource "vultr_ssh_key" "ssh_key" {
  depends_on              = [vultr_firewall_rule.firewall_rule]
  name                    = "${var.org_identifier}-${var.environment}-${var.project_name}-${var.ssh_key_name}"
  ssh_key                 = var.ssh_key
}


# 4. create instance
resource "vultr_instance" "instance" {
  depends_on              = [vultr_ssh_key.ssh_key]
  count                   = length(var.labels) * var.create_vultr_resources
  region                  = var.region
  plan                    = var.plan         
  os_id                   = var.os_id        
  script_id               = var.script_id    
  firewall_group_id       = vultr_firewall_group.firewall_group.id
  ssh_key_ids             = [vultr_ssh_key.ssh_key.id]
  enable_ipv6             = var.enable_ipv6  
  ddos_protection         = var.ddos_protection  
  activation_email        = var.activation_email 
  tag                     = var.tags[count.index]
  label                   = "${var.org_identifier}-${var.environment}-${var.project_name}-${var.labels[count.index]}"
}
