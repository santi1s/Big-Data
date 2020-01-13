--WIP--

_This guide is a breakdown of the access/security documentation.
For the most up to date information, please refer to our official, public-facing documentation: 
[ADLS Gen 1 Access Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control)
[ADLS Gen 1 Security Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview)_

_For Troubleshooting, please see our TSG([Troubleshooting Access](/Analytics/Data-Lake-Store/TSGs/Troubleshooting-Access))_


[[_TOC_]]

# Basic Principals

Data Lake has three levels of security:
1. Firewall - Network Level Security
2. RBAC Permissions - User/Resource Level Security
3. ACL Permissions - User/Data Level Security

These permissions can all play a part in a user's access to the data, and this guide covers the basics of all three below! In general, however, refer to the Firewall when dealing with network security, refer to RBAC when dealing with Resource-Level security, and refer to ACL permissions when dealing with data-level security.

```
Note:
Understanding how these permissions work will allow you to solve many/most ADLS cases.
Being very familiar with this documentation will be critical in your ability to resolve ADLS cases quickly.
```

#RBAC Permissions
[Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview#rbac-for-account-management)
RBAC Permissions are the permissions applied under Access Control (IAM)
![image.png](/.attachments/image-0f90baa5-5e3e-4eae-8169-3fd69f15aa1e.png)

RBAC (Role Based Access Control) Permissions are essentially the level of control that a user has on an Azure Resource. For some roles, permissions on the resource also means permissions to the data itself, but for many roles in Data Lake store, the RBAC assignment only affects management capabilities, and all data access is governed by ACL permissions.

## Built-In Roles
There are four Built-In Roles that customers can assign their users, and it is possible for the user to have **no** RBAC permissions assigned, but they will still have access to the data.
[Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview#rbac-for-account-management)

|Role|Management rights| Data access rights |  Explanation|
|--|--|--|--|
| No RBAC Role Assigned | None | Governed by ACL | The user cannot use the Azure portal or Azure PowerShell cmdlets to browse Data Lake Storage Gen1. The user can use command-line tools only. |
| Owner | All | All | The Owner role is a **superuser**. This role can manage everything and has full access to data without ACLS.|
| Reader | Read-Only | Governed by ACL | The Reader role can view everything regarding account management, such as which user is assigned to which role. The Reader role can't make any changes to management functions. The reader role can be assigned any access to the data using ACLs. |
| Contributor | All except Add and Remove Roles | Governed by ACL | The Contributor role can manage some aspects of an account, such as deployments and creating and managing alerts. The Contributor role cannot add or remove roles. The contributor role can be assigned any access to the data using ACLs.|
| User Access Administrator | Add and Remove Roles | Governed by ACL | The User Access Administrator role can manage RBAC user access to accounts. The UAA role can be assigned any access to the data using ACLs. |

## Custom Roles
RBAC roles are all built out of a set of Actions, that grant any user assigned that role the ability to take those actions.
Custom roles do not come up frequently on ADLS cases, so this knowledge is helpful, but not critical. 
For more information on building custom roles, go here: [Custom Roles Documentation](https://docs.microsoft.com/en-us/azure/role-based-access-control/custom-roles
)

To see what kinds of actions can be taken on any kind of Azure resource, you can use PowerShell:
[AzProviderOperation Documentation](https://docs.microsoft.com/en-us/powershell/module/az.resources/get-azprovideroperation?view=azps-3.3.0)

For example, to see all actions available on Data Lake Store Gen 1, you can use this PowerShell Command:
```
Get-AzProviderOperation Microsoft.DataLakeStore/*
```
**Two actions to note for ADLS Gen 1:**
Microsoft.DataLakeStore/accounts/Superuser/action
Microsoft.Authorization/roleAssignments/write

If these two actions are assigned together, they grant the role effective Superuser permissions.

#ACL Permissions
[Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control)

ACLs are Data-Level permissions, applied for specific users, groups, or service principals, that grant access to specific data paths.
Unless a user is an RBAC Owner,  or is part of a group that is an RBAC Owner, or has a custom role with the SuperUser Action applied, the user will require ACLs to be able to access the data.

## What Permissions Are Needed

Common scenarios/operations and permissions needed to complete them are listed in the documentation here: [Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control#common-scenarios-related-to-permissions)

_**Most Frequent Scenarios**:_

1. In order to perform any operation on any file, a user will need at least --X permissions from the root folder all the way to the file in question.
2. In order to be able to **browse** to a file or folder (in the portal, or in any other UI where the user will traverse the folder structure), --X is not enough, and a user will need at least R-X permissions from the root folder all the way to the file in question. 
R-X allows the user to list all files/folders contained in a folder. This ability to list is what allows them to see the files and folders to be able to click through them.


## Permissions Inheritance/Default Permissions

When a new file or folder is created on the data lake it **does not automatically inherit the parent folder's permissions**. Instead, the new file or folder inherits the **Default Permissions**. You can find the Default permissions in the portal under the Data Explorer -> Access -> Advanced
![image.png](/.attachments/image-8e7c9fd8-dca3-4ace-a570-4792557bec51.png)

For example, in the scenario above, note that the only user that will be automatically granted permissions on a new file or folder is whhenderintadfv2.

If any other users needed to be granted automatic access to new files and folders under this folder, they would need to be granted default permissions on this folder.

[Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control#default-permissions-on-new-files-and-folders)

## The Mask

The Mask on an ADLS File/Folder is essentially **effective permissions** on that file or folder.
You can find the mask settings on any file/folder by going to Access -> Advanced, and then beneath the Default permissions is the mask.

![image.png](/.attachments/image-33e0010d-c21f-4a4e-9069-3d3adc59a805.png)

The mask limits access for named users/groups (users/groups that have been granted permissions to that file/folder), and the owning group (which is the group/second value listed under Owners on the Access menu.) Users can have _fewer_ permissions than the mask has listed, but users can never have _more_ permissions than the mask has listed. 

For example, in this image:
![image.png](/.attachments/image-e25a8fbb-d974-4ff7-a1d7-3710e1a0c1f1.png)

The mask is listed as --X, so even though whhenderTestSP is listed as having RWX under 'Assigned Permissions', the mask has created an effective permission of --X. Whenever whhenderTestSP interacts with this folder, it will only have --X permissions.

[Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control#the-mask)

## Apply/Manage Permissions

### Portal
The portal is one of the most common tools for managing ACL permissions. Under the 'Data Explorer' you can select any file/folder and choose 'Access' to view or edit its permissions.

### Tools and Scripts

1. Java Tool
This tool will allow you to recursively specify permissions (both access and default) for users and groups through your entire data tree. It runs more quickly than operations in the portal and doesn’t require that you leave a browser tab open.
Here is the link to the tool download that includes documentation and getting started tips:
https://azure.github.io/data-lake-adlstool/doc/

2. Azure CLI 
The Azure CLI is a command tool
https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-get-started-cli-2.0#work-with-permissions-and-acls-for-a-data-lake-storage-gen1-account


For more information on ACLEntry strings:
https://docs.microsoft.com/en-us/java/api/com.microsoft.azure.datalake.store.acl._acl_entry
### Best Practices

1. Only 32 individual permissions profiles are able to be added to any file/folder, so it is highly suggested that permissions be applied to groups, and then users are added to those groups when they need access.

2. For high-volume permissions edits, it is highly suggested that you do not use the portal, as the portal will have to remain open for the duration of the operation, and the portal is not as efficient. Use the Java tool, mentioned above, or some other script like .NET or PowerShell

#Superusers vs Owning Users vs Owning Groups

#Firewall
## W/ A VNet


#Quick Summary/Explanation for Customers
Often, though the documentation covers all the principals above, customers have trouble with the permissions fundamentals.
I have regularly sent personalized versions of the below paragraph to give a high-level understanding of our system augmented with some examples from the customer's own environment:

```
Azure Data Lake Store Gen 1 has two Levels of security:

1. First Level of Security – RBAC
You can see this level of permission in the 'Access Control (IAM)' menu. RBAC (Role Based Access Control) roles provide management rights to your Data Lake resource, but do not necessarily grant access to the Data.

You can see on the RABC for Account Management chart in the documentation what permissions the RBAC roles grant users on the data lake: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview#rbac-for-account-management

The only RBAC role that grants access to the data is the 'Owner' role, which grants full access to all data.
All other RBAC roles need to be to be assigned ACLs in order to access the data.

2. Second Level of Security – ACLs
ACLs are permissions assigned to the data directly. If you open the Data Explorer in the Data Lake Resource and select “Access” at the top menu, you can see the ACLs for that folder.
Users need to be granted specific access to any files or folders, and granting “Read” access to one file deep in a folder nest isn’t going to be enough for a user to be able to browse to that file, or access the file through code. You’ll need to assign appropriate permissions for your users in order for them to be able to access their data.
For example – 
In order to be able to read a file in the portal, you will need to assign R-X permissions to the folder path starting at the root and then down to the parent folder. You will then need R-- access on the file itself.

The documentation covers common scenarios like the one above, permissions and how to assign them, explains how permissions inheritance works, and other aspects of data lake security as well.
Have a look and if you have any specific questions, please let me know!
Documentation: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control
```





