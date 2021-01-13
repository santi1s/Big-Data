**Symptom**:  Existing Data Catalog Administrator no longer in the Organization

**Important**:  Subscription needs to be active else we have bigger issue not covering here.   We need to engage Subscription & Management for Change Ownership / Enable the Subscription.

**Step 1**:

•	Subscription details (backend information).   We need Tenant ID / Region
•	Go to http://mxtoolbox.com – Copy the TenantID from the Case (then add “.api.datacatalog.azure.com)  Paste whole text in the search, CName will be displayed 3rd column will have short region name
•	You can reach out to me or Raise an ICM with Owning Service – DPG InfoService then InfoCat  make sure to provide previous step details request backend information

Step 2:

•	Metadata information received from Product Group review then reach out to customer to verify New User is Subscription Owner (It is required Step)
•	Collect following details:
o	Go to Azure Active Directory | Properties | Screen shot of the DirectoryID
o	Go to Azure Active Directory | User & group | Find the Owner of the Subscription – Copy / Paste the Email ID, ObjectID and Screen shot
•	Updated the ICM requesting PG to add that User as Catalog Administrator from backend

Step 3

•	PG updates the ICM then reach out to the customer with the details
•	New Catalog Administrator navigate to http://www.azuredatacatalog.com | Settings -  Remove the Old User and recommend to additional Subscription Owner as Catalog Administrator to avoid this situation.
