# Terraform
Learning how to create infrastructure as code
```
Created a connection to aws in the connections.tf file and a VPC in the resources file.
```
### Useful Commands

$ terraform init                                  # initialise a terraform plan

$ terraform plan                                  # informs you of the resources that will be created

$ terraform apply                                 # shortcut for plan & apply - avoid this in production

$ terraform plan -out out.terraform               # terraform plan and write the plan to out file

$ terraform apply out.terraform                   # apply terraform plan using out file

$ terraform show                                  # show current state

$ terraform destory                               # delete infastruture from cloud provider

$ terraform import                                # used to copy a file from source to cloud

# Reference Documentation

### Download URL: https://www.terraform.io/downloads.html
### AWS Resources: https://www.terraform.io/docs/providers/aws/
### List of providers: https://www.terraform.io/docs/providers/index.html
