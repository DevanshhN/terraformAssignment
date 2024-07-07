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
| [aws_security_group.sg](https://registry.terraform.io/providers/hashicorp/aws/5.22.0/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_egress_cidr"></a> [allowed\_egress\_cidr](#input\_allowed\_egress\_cidr) | n/a | `string` | `"0.0.0.0/0"` | no |
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | The default tags to be added to a resource | `map(string)` | `{}` | no |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | Ingress rules | <pre>list(object({<br>    from_port       = number<br>    to_port         = number<br>    protocol        = string<br>    cidr_blocks     = list(string)<br>    security_groups = list(string)<br>    description     = string<br>  }))</pre> | n/a | yes |
| <a name="input_sg_name"></a> [sg\_name](#input\_sg\_name) | Name of the SG being created, value is passed from the calling module | `any` | n/a | yes |
| <a name="input_ssh_port"></a> [ssh\_port](#input\_ssh\_port) | SSH port to be allowed on the inbound rules for Security Group | `number` | `22` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | Value of the VPC ID being passed when the module is called in the root main.tf | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sg_id"></a> [sg\_id](#output\_sg\_id) | The Security Group ID of the resource created |
<!-- END_TF_DOCS -->