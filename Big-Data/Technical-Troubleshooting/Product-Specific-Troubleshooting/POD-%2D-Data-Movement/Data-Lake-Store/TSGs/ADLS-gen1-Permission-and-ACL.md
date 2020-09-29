[[_TOC_]]
# Overview
We usually see other technology reading/writing from or into ADLS gen1. When situation like this if we usually refer the customer to understand the logic behind ADLS gen1 by referencing a few link below:

## Understand the logic on ADLS gen1 
https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control#common-scenarios-related-to-permissions

## To have users/group/SPN have access to all files and folders and newly create files and folders use follow this link (sample 3)
https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/set-azdatalakestoreitemaclentry?view=azps-4.7.0

**Example :** 
To bypass policy when installing the new module:
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

Install  new module:
Install-Module Az.DataLakeStore -Repository PSGallery -Force

To connect to Azure:
Connect-AzAccount

Select Subscription: 
Select-AzSubscription -SubscriptionId f4444448-9220-4556-8998-d55555555a5c

$fullAcl="user:ca631573-5a14-40e1-819a-bacbc984dc5d:rwx,default:user:ca631573-5a14-40e1-819a-bacbc984dc5d:rwx"
$newFullAcl = $fullAcl.Split(",")
Set-AzDataLakeStoreItemAclEntry -AccountName "adlsgen1Name" -Path /root/folder -Acl $newFullAcl -Recurse -Concurrency 128 -ShowProgress -Verbose