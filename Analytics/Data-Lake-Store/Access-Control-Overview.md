--WIP--

_This guide is a breakdown of the access/security documentation.
For the most up to date information, please refer to our official, public-facing documentation: [ADLS Gen 1 Access Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control)_

[[_TOC_]]

# Basic Principals

Data Lake has three levels of security:
1. Firewall
2. RBAC Permissions
3. ACL Permissions

The firewall is address-based security and acts like any other firewall. RBAC Permissions and ACL Permissions are user-based permissions.

#RBAC Permissions

#ACL Permissions

#Firewall
## W/ A VNet





1. First Level of Security – RBAC
You’ve granted this level of security already by giving your users ‘Contributor’ permissions under the Access.
You can see on this chart from the documentation what permissions the RBAC roles grant users on the data lake:

Only Owners have automatic access to the data that is not governed by ACLs. Everyone else needs to be granted ACLs in order to access the data.
In the data lake, RBAC roles are mostly for management purposes.
Documentation: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview#authorization-and-access-control
2. Second Level of Security – ACLs
ACLs are permissions assigned to the data directly. If you open the Data Explorer, select “Access” at the top menu, you can see the ACLs for that folder.
Users need to be granted specific access to any files or folders they need access to. And granting “Read” access to one file deep in a folder nest isn’t going to be enough to grant access to that file. You’ll need to assign appropriate permissions for your users in order for them to be able to access their data.
For example – In order to be able to read a file:

The documentation covers common scenarios, overviews permissions and how to assign them, explains how permissions inheritance works, and other aspects as well.
Have a look and if you have any specific questions, please let me know.
Documentation: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control#users-and-identities


