# 0. Organization identifier, project, environmental and creator  variables
org_identifier                            = "inc"
project_name                              = "analytics"
environment                               = "prod"
creator                                   = "Terraform"
create_vultr_resources                    = 1

# 1. firewall group variables
firewall_group_description                = "Server Firewall Group"

# 2. firewall rules variable
protocols                                 = ["tcp", "tcp", "tcp"]                                   # length must equal length of "ports" variable
ip_types                                  = ["v4", "v4", "v4"]                                      # length must equal length of "ports" variable
subnets                                   = ["0.0.0.0", "0.0.0.0", "0.0.0.0"]                       # length must equal length of "ports" variable
subnet_sizes                              = [0, 0, 0]                                               # length must equal length of "ports" variable
ports                                     = ["80", "443", "22"]
notes                                     = ["Access Port 80", "Access Port 443", "Access Port 22"] # length must equal length of "ports" variable

# 3. ssh key variables
ssh_key_name                              = "instance-ssh-key"

# 4. instance variables
region                                    = "ewr"
plan                                      = "vc2-1c-1gb"
os_id                                     = "387"     # Ubuntu 20.04 arch x64
#os_id                                    = "270"     # Ubuntu 18.04 arch x64
enable_ipv6                               = true
ddos_protection                           = false
activation_email                          = true
tags                                      = ["server"]                                              # length must equal length of "labels" variable
labels                                    = ["node-js"]
