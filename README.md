# terraform-google-gcds

With Google Cloud Directory Sync (GCDS), you can synchronize the data in your Google Account with your Microsoft Active Directory or LDAP server. GCDS doesn't migrate any content (such as email messages, calendar events, or files) to your Google Account. You use GCDS to synchronize your Google users, groups, and shared contacts to match the information in your LDAP server.


## WHAT THE MODULE DOES

This module will build a Linux server and install the GCDS configuration tool. This tool is a JAVA application so it requires a desktop and a JDK. This avoids the need to use a Windows desktop or server.

It will start a VNCSERVER and you can connect to it using VNCVIEWER on port 5901

The 'Configuration Manager' can then be found in the desktop menu under OTHER -> Configuration Manager.

After the first installation of the VM it will take some time for VNC to become avaliable since there are many packages that need to install. Once this has completed ssh to your instance and run 'vncserver' as root, this will prompt you to enter a password, this needs to be done only once. Reboot and the VNCSERVER will start automatically in future.

## WHAT THIS MODULE DOES NOT DO

This module does not do any network configuration, you will be responsible for setting up firewall rules to permit tcp-5901 from your desktop source IP. A network tag of 'vnc is created on the VM so you can use this as a target in you firewall rules.

This module will also not set up the active directory or the actual configuration of the directory sync tool. You will need to do this manually.


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| instance\_name | The name of the instance, 'gcds' will be used if not set | `string` | `"gcds"` | no |
| network | The network to deploy to, if not specified 'default' will be used | `string` | `"default"` | no |
| project\_id | The project to deploy to | `string` | n/a | yes |
| region | The region to deploy to | `string` | n/a | yes |
| zone | The zone to deploy to | `string` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->