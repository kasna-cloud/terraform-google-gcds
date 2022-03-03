# terraform-google-gcds

## WHAT THE MODULE DOES


## WHAT THIS MODULE DOES NOT DO



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| access\_config | Access configs for network, nat\_ip and DNS | <pre>list(object({<br>    network_tier           = string<br>    nat_ip                 = string<br>    public_ptr_domain_name = string<br>  }))</pre> | <pre>[<br>  {<br>    "nat_ip": "",<br>    "network_tier": "PREMIUM",<br>    "public_ptr_domain_name": ""<br>  }<br>]</pre> | no |
| instance\_name | The name of the instance, 'gcds' will be used if not set | `string` | `"gcds"` | no |
| network | The network to deploy to | `string` | n/a | yes |
| project\_id | The project to deploy to | `string` | n/a | yes |
| public | Assign a public ip, true=yes, false=no | `bool` | n/a | yes |
| region | The region to deploy to | `string` | n/a | yes |
| zone | The zone to deploy to | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->