<span style="color:#DF0101;">**Notice ADLS gen1 is due for retirement, for more info check out this**</span> [ADLS gen1 Retirement plan TSG](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/444557/ADLS-gen-1-Retirement-plan)


[[_TOC_]]
# Overview
We usually see other technology reading/writing from or into ADLS gen1. When situation like this if we usually refer the customer to understand the logic behind ADLS gen1 by referencing a few link below:

## Understand the logic on ADLS gen1 
https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control#common-scenarios-related-to-permissions

## To have users/group/SPN have access to all files and folders and newly create files and folders use follow this link (sample 3)
https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/set-azdatalakestoreitemaclentry?view=azps-4.7.0

**Example :** 
To bypass policy when installing the new module (if firewall blocking):
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
 
Install  new module (if you haven’t got the latest module install):
Install-Module Az.DataLakeStore -Repository PSGallery -Force -AllowClobber
 
To connect to Azure:
Connect-AzAccount
 
Select Subscription: 
Select-AzSubscription -SubscriptionId 5454546-45654-454654-4545465
 
 
 
###Microsoft doc regarding ACL entry : https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/set-azdatalakestoreitemaclentry?view=azps-5.0.0
Example 3:
 
###For individual user then use this sample: (make sure to include the $ on your variable)
fullAcl="user:enterpriseObjectID:rwx,default:user:enterpriseObjectID:rwx"
newFullAcl = $fullAcl.Split(",")
Set-AzDataLakeStoreItemAclEntry -AccountName "myADLSgen1Name" -Path / -Acl $newFullAcl -Recurse -Concurrency 128 -ShowProgress -Verbose
 
###For group then use this sample: (make sure to include the $ on your variable)
fullAcl="group:enterpriseObjectID:rwx,default:group:enterpriseObjectID:rwx"
newFullAcl = $fullAcl.Split(",")
Set-AzDataLakeStoreItemAclEntry -AccountName "myADLSgen1Name" -Path / -Acl $newFullAcl -Recurse -Concurrency 128 -ShowProgress -Verbose
 

###Object ID for Group 
ObjectID = can be found on Azure Active Directory > click on Group > 

![image.png](/.attachments/image-1e449e97-64b3-4586-b573-204ba0cf059c.png)

###Object ID for SPN
Object ID = can be found on Azure Active Directory > Enterprise Application > drop down “all application”

![image.png](/.attachments/image-59d6dfce-5e11-49be-a9d5-a845053027e9.png)

Then copy the Object ID here

![image.png](/.attachments/image-5b6d3bb0-fdd4-4bd8-bd71-2aece0fae05e.png)

##To modify the mask with Powershell 
This is a small sample, but it sure works to edit / modify ACL

Entry ACL for MASK on ADLS gen1

Set-AzDataLakeStoreItemAclEntry -AccountName "dyadlsg1" -Path /testadlstool -Acl "Mask::rwx" -Recurse -Concurrency 128 -ShowProgress -Verbose



