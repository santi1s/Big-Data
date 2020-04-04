# Deleting & Recreating an ADC resource in another subscription
---
## Summary:
There is only 1 ADC per tenant. This means that customer will not be able to create 2 ADC resources in 2 different subscriptions available on their tenant. Only 1 ADC in any of their subscriptions available on their tenant. Please follow the steps below in case they want to migrate their ADC resource from one subscription to another for any reason.

Please note:
- It is not possible to rename the Catalog or move it to a different region.
- Different tenant, customer can create new Data Catalog there is no link to the old one then request from Product Group to initiate the Delete process following the link you have referred below.

## Requirements:
Once the below requirements list are met, customer can move the ADC from Azure Portal or ADC Portal | Settings. It is recommended to use the ADC Portal.

- Both Source / Target Subscription part of same Tenant
- User who initiates the process needs to be owner of the Subscription and Catalog Administration.   ADC Portal http://www.azuredatacatalog.com | Settings.
- Settings Option is available only if the Data Catalog is linked to Azure Subscription
- Target Subscription:
> - User needs to be Owner of the Subscription.
> - Please make sure Subscription | Resource Provider | “Microsoft.DataCatalog” is registered.

## Process:
###Option 1:
- Link to Azure Subscription then enable Standard SKU. Search for Catalog in Azure Portal and confirm whether is is visible or not.
- The process takes five to ten minutes as long as the User is the subscription owner

Following steps will associate the Subscription to Azure,  Administrator able to view the Data Catalog from http://portal.azure.com    This step will display additional Menu – Settings  in the Azure Data catalog Portal (http://azuredatacatalog.com ). The existing data will not be lost during the process.

Note: User needs to Azure Active Directory User with Member Role and Subscription owner.
1. Please go to Azure Portal } Create the Azure Data Catalog, a sample screenshot similar to that will be displayed. Note: Please work with the  subscription Administrator.
2. Azure Portal | Subscription | Select the Subscription | Resource Provider | make sure Microsoft.DataCatalog Resource Provider is registered.
![New Data Catalog.png](/.attachments/New%20Data%20Catalog-9a8f8e62-fa0f-48e4-90fc-91cfb75d0018.png)
3. Please fill up the information select Create.    This step will allow to associate with existing Catalog which enable the ability to Manage.   Please check from Azure Data Catalog Portal (http://azuredatacatalog.com  ) | Settings TAB will be displayed which allows to add User(s) and Administrator to manage the Catalog is available.    Please add additional Catalog administrator after completing the step.

**Or**

Alternate Option:

1. Go to Office 365 Admin Page | Remove the PowerBI license for the User Example: user@contoso.com

2. Go to http://azuredatacatalog.com or http://www.azuredatacatalog.com UI will differ will provide an option to Create “Catalog”   - Default Name no option to Rename

3. Create Step will link the Office 365 Catalog to Azure Portal which allow you to Manage it

4. Please select Settings – Add User & you to Catalog Administrator.    It is better to have extra User(s).     The Settings page User can be added

5. Go to Office 365 Admin Page | Add the PowerBI license for the User Example: user@contoso.com

6. Post creation from Home type “*” check for Assets from Azure Data Catalog Portal

7. Settings option is visible to allow to manage the User / Administrator.   Azure Data Catalog can be seen from Azure Portal.

