# terraform-google-gcds

With Google Cloud Directory Sync (GCDS), you can synchronize the data in your Google Account with your Microsoft Active Directory or LDAP server. GCDS doesn't migrate any content (such as email messages, calendar events, or files) to your Google Account. You use GCDS to synchronize your Google users, groups, and shared contacts to match the information in your LDAP server.


## WHAT THE MODULE DOES

This module will build a Linux server and install the GCDS configuration tool. This tool is a JAVA application so it requires a desktop and a JDK. This avoids the need to use a Windows desktop or server.

It will start a VNCSERVER and you can connect to it using VNCVIEWER 

The 'Configuration Manager' can then be found in the desktop menu under OTHER -> Configuration Manager.

## WHAT THIS MODULE DOES NOT DO

This module does not do any network configuratio, you will be responsible for setting up firewall rules to permit tcp-5901 from you desktop source IP. 


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