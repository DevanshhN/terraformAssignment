<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 5.22.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | 4.0.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_http"></a> [http](#provider\_http) | 3.4.3 |
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.2 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_bastion"></a> [bastion](#module\_bastion) | ./modules/ec2 | n/a |
| <a name="module_network"></a> [network](#module\_network) | ./modules/network | n/a |
| <a name="module_privateEC2"></a> [privateEC2](#module\_privateEC2) | ./modules/ec2 | n/a |
| <a name="module_private_sg"></a> [private\_sg](#module\_private\_sg) | ./modules/sg | n/a |
| <a name="module_public_sg"></a> [public\_sg](#module\_public\_sg) | ./modules/sg | n/a |
| <a name="module_ssh_key"></a> [ssh\_key](#module\_ssh\_key) | ./modules/ssh_key | n/a |
| <a name="module_subnet"></a> [subnet](#module\_subnet) | ./modules/network/subnet | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | ./modules/network/vpc | n/a |

## Resources

| Name | Type |
|------|------|
| [null_resource.demo_resource](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |
| [http_http.ipv4](https://registry.terraform.io/providers/hashicorp/http/latest/docs/data-sources/http) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_tags"></a> [default\_tags](#input\_default\_tags) | n/a | `map(string)` | <pre>{<br>  "CanBeDeleted": "Yes",<br>  "Owner": "Devansh",<br>  "Purpose": "Development"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_Private_EC2_IP"></a> [Private\_EC2\_IP](#output\_Private\_EC2\_IP) | The IPv4 Private address of the private server, you can connect to it using the bastion host |
| <a name="output_bastion_host_IP"></a> [bastion\_host\_IP](#output\_bastion\_host\_IP) | The IPv4 Public IP address of the bastion host |
<!-- END_TF_DOCS -->