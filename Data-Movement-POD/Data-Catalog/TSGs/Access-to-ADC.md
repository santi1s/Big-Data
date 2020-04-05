#Summary:
 Azure Data Catalog can be accessed by 2 type of Users:
- Users that belong to Azure Active Directory and added by the ADC admin.
- User is enabled with Power BI Pro license will get automatic access to the Data Catalog due to License Agreement when they sign up for Office 365 E5 with Power BI Pro License.   This type of user have full access to Data Catalog Asset without Administrative Privilege. User is NOT part of Azure Data Catalog User permission

# Process:
To grant a user access to the Azure Data Catalog Resource, the ADC admin needs to add the user from ADF Portal setting. Please follow the steps below:

1. ADC Administrator and person needs to navigate to ADC Portal http://www.azuredatacatalog.com 
2. Select Settings
3. Then add the User either as Catalog Administrator or User or Glossary Administrator (Standard SKU feature)

Note: If the Catalog Administrator no longer in the company then we can initiate a request to Product Team to add New Catalog Admin following information is needed:
- Azure Portal | Subscriptions | Select Subscription | Access Control (IAM) | User needs to be Owner.
- Azure Portal | Azure Active Directory | Properties | Copy / Paste the Directory ID and screen shot.
- Azure Portal | Azure Active Directory | User | Find the User who own the Subscription | Properties
> - Email ID
> - Copy / Paste the ObjectID and Screen shot