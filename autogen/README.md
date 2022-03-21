# terraform-google-gcds

With Google Cloud Directory Sync (GCDS), you can synchronize the data in your Google Account with your Microsoft Active Directory or LDAP server. GCDS doesn't migrate any content (such as email messages, calendar events, or files) to your Google Account. You use GCDS to synchronize your Google users, groups, and shared contacts to match the information in your LDAP server.


## WHAT THE MODULE DOES

This module will build a Linux server and install the GCDS configuration tool. This tool is a JAVA application so it requires a desktop and a JDK. This avoids the need to use a Windows desktop or server.

It will start a VNCSERVER and you can connect to it using VNCVIEWER 


## WHAT THIS MODULE DOES NOT DO

This module does not do any network configuratio, you will be resonsible for setting up firewall rules to permit tcp-5901 from you desktop source IP. 


<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->