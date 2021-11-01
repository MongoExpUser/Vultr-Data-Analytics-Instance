
# 1. output: firewall_group
output "vultr_firewall_group_attributes" {
  description = "key-value pair attributes of the created firewall group."
  value = vultr_firewall_group.firewall_group
}

# 2. output: firewall rules
output "vultr_firewall_rule_attributes" {
  description = "key-value pair attributes of the created firewall rule(s)."
  value = vultr_firewall_rule.firewall_rule
}

# 3. output: ssh key
output "vultr_ssh_key_attributes" {
  description = "key-value pair attributes of the created ssh key."
  value = vultr_ssh_key.ssh_key
}

# 4. output: instance
output "vultr_instance_attributes" {
  description = "key-value pair attributes of the created instance(s)."
  value = vultr_instance.instance
}
