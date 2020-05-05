# Terraform Infrastructure for AWS

### Order of Provision
1. Navigate to S3Bucket to create your S3 bucket.
Command are:


```terraform init```

```terraform plan```

```terraform apply -auto-approve```

2. Navigate to StateFileS3Backend to create your Backend to store the state.

```terraform init```

```terraform plan```

```terraform apply -auto-approve```

3. Navigate back to Infrastructure to build.

### Commands

```terraform init```

```terraform plan -var-file="dev.tfvars" ```

```terraform apply -var-file="dev.tfvars" -auto-approve```

```terraform destroy```

Please destroy if not using it, as some of the resources are not free e.g elastic ip.