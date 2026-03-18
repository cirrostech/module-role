# AWS IAM Role Terraform Module

Creates a single IAM role

### IAM Role

```hcl
module "iam_role" {
  source  = "https://github.com/cirrostech/module-role"

  role_name = "example-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
      Action = "sts:AssumeRole"
    }]
  })
}
```