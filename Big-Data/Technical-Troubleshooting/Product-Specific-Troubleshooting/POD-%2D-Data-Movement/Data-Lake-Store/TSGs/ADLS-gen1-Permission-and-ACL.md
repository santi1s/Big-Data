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
Install-Module Az.DataLakeStore -Repository PSGallery -Force
 
To connect to Azure:
Connect-AzAccount
 
Select Subscription: 
Select-AzSubscription -SubscriptionId 5454546-45654-454654-4545465
 
 
 
###Microsoft doc regarding ACL entry : https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/set-azdatalakestoreitemaclentry?view=azps-5.0.0
Example 3:
 
###For individual user then use this sample:
$fullAcl="user:ObjectID:rwx,default:user:ObjectID:rwx"
$newFullAcl = $fullAcl.Split(",")
Set-AzDataLakeStoreItemAclEntry -AccountName "myADLSgen1Name" -Path / -Acl $newFullAcl -Recurse -Concurrency 128 -ShowProgress -Verbose
 
###For group then use this sample:
$fullAcl="group:ObjectID:rwx,default:group:ObjectID:rwx"
$newFullAcl = $fullAcl.Split(",")
Set-AzDataLakeStoreItemAclEntry -AccountName "myADLSgen1Name" -Path / -Acl $newFullAcl -Recurse -Concurrency 128 -ShowProgress -Verbose
 

###Object ID for Group 
ObjectID = can be found on Azure Active Directory > click on Group > 

![image.png](/.attachments/image-e523e103-090e-4937-9743-5d547a124ef1.png)

###Object ID for SPN
Onject ID = can be found on Azure Active Directory > Enterprise Application > drop down “all application”

![image.png](/.attachments/image-59d6dfce-5e11-49be-a9d5-a845053027e9.png)

Then copy the Object ID here

![image.png](/.attachments/image-f6b29d28-d0cd-42e3-8490-9e577f0dc517.png)



