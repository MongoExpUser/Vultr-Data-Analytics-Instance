[![CI - Vultr-DA-Instance](https://github.com/MongoExpUser/Vultr-Data-Analytics-Instance/actions/workflows/terraform.yml/badge.svg)](https://github.com/MongoExpUser/Vultr-Data-Analytics-Instance/actions/workflows/terraform.yml)

# Vultr Data Analytics Instance

This repo contains the Terraform module for the deployment  of an **Instance** on Vultr Cloud for a Data Analytics App.

## Terraform (TF) Module.
The module deploys  instance(s) in the Vultr Cloud. The following resources are created:
1)  Vultr Firewall Group assigned to the instance(s)
2)  Vultr Firewall Rules attached to the Vultr Firewall Group.
3)  Vultr SSH KEY
4)  Vultr Instance(s) (Virtual Machine(s))
                                            
## Deploying the Terraform (TF) Module

1) To deploy the module on <strong>```Vultr```</strong> via <strong>GitHub Actions</strong> see the following link: <br>
 <strong><a href="https://github.com/MongoExpUser/Vultr-Data-Analytics-Instance/blob/main/.github/workflows/terraform.yml" rel="nofollow">CI - Vultr-DA-Instance</a></p></strong>
  

# License

Copyright © 2015 - present. MongoExpUser

Licensed under the MIT license.
