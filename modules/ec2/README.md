<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.22.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.22.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.ec2](https://registry.terraform.io/providers/hashicorp/aws/5.22.0/docs/resources/instance) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | AMI ID using which we are creating EC2 instance, same AMI is used for EC2 and bastion | `string` | `"ami-04a81a99f5ec58529"` | no |
| <a name="input_associate_public_ip_address"></a> [associate\_public\_ip\_address](#input\_associate\_public\_ip\_address) | To be true if the instance needs a public IP address attached, false if the instance is supposed to be private | `bool` | `true` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | The default tags to be added to a resource | `map(string)` | `{}` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Size of EC2 instance to be created, both EC2 instance will be created of same size | `string` | `"t2.micro"` | no |
| <a name="input_sg_id"></a> [sg\_id](#input\_sg\_id) | Value of the Security Group ID that is to be attached to the EC2 Instance | `any` | n/a | yes |
| <a name="input_ssh_key"></a> [ssh\_key](#input\_ssh\_key) | The SSH key name to be use when creating the server | `any` | n/a | yes |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Value of the  subnet being passed when the modules is called in the root main.tf | `any` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | Value of the VPC ID being passed when the module is called in the root main.tf | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ec2_instance_id"></a> [ec2\_instance\_id](#output\_ec2\_instance\_id) | The Resource ID of the EC2 instance created |
| <a name="output_private_ip"></a> [private\_ip](#output\_private\_ip) | The Private IP address of the resource created |
| <a name="output_public_ip"></a> [public\_ip](#output\_public\_ip) | The public IP address of the resource created, IF it exists |
<!-- END_TF_DOCS -->