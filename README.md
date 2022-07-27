# iac-awesome-resume
Provision infrastructure for my-awesome-resume project.

## Getting started

For provisioning infrastructure with backend included follow the  next steps:

    terraform init -backend=false
    terraform plan -out=backend.plan -target=module.backend -var 'backend_bucket_name=tf-backend-aws-example'
    terraform apply backend.plan
    mv backend.tf.sample backend.tf
    terraform init -reconfigure -backend-config=conf.tfvars
    # Now 'show' should show your terraform backend resource attributes
    terraform show

For more information read the docs on the [backend module](https://github.com/stavxyz/terraform-aws-backend).

When our terraform is properly configured with a backend we can work with our other modules.
Execute the following commands for provision the rest of the infrastructure:

    terraform plan
    terraform apply

