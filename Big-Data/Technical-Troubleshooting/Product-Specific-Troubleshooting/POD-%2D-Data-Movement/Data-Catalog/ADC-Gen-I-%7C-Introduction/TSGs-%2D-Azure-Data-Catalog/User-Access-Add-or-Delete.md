In the case that the user has owner permissions to the Azure Data Catalog in the Azure Portal, they can add or delete the ADC Administrator as follows:

1.	Log into Azure Portal as subscription admin for the catalog (might have to be tenant admin also, not sure)
2.	Go to Resources and click on the catalog resource.  Note the resource group the catalog exists in.
![image.png](/.attachments/image-11861f5b-2d6c-4319-9c43-04812a609869.png)
 
3.	Click on Export Template
4.	Click on Add to Library and give a name for the template, save it.
5.	In the Search bar search for Templates and click it.
6.	Click on the template you exported.
7.	Click Edit
8.	Click ARM Template
9.	Under Properties, see the admins section of the json which will look similar to this:

            "properties": {
                "sku": "Standard",
                "admins": [
                    {
                        "upn": "TestUser@xxxxxxxxhalehotmail.onmicrosoft.com",
                        "objectId": "636e33a3-xxxx-xxxc-a0c6-6054d37e6efe"
                    }
                ],
                "users": [
10.	Add or remove admins as needed, using the proper JSON, upn, and object id for the new admin.  You can get the objectid from Azure Active Directory/Users, choose the user, and you will see their objectid.  You can also remove admins.  Note you can do users the same way if desired, or other catalog properties.

                    {
                        "upn": "TestUser2@xxxxxhalehotmail.onmicrosoft.com",
                        "objectId": "c03aa001-xxxx-xxxx-be73-7c194552e5ca"
                    }
11.	After editing, the new admins should look like this.  Note the added comma after the previoius original admin block.

            "properties": {
                "sku": "Standard",
                "admins": [
                    {
                        "upn": "TestUser@xxxxxhalehotmail.onmicrosoft.com",
                        "objectId": "636e33a3-xxxx-xxxx-a0c6-6054d37e6efe"
                    },
                    {
                        "upn": "TestUser2@xxxxxlhalehotmail.onmicrosoft.com",
                        "objectId": "c03aa001-xxxx-xxxx-be73-7c194552e5ca"
                    }
                ],
                "users": [
12.	Once admins are added, save the template.
13.	Close the template editing page to get back to the page with Deploy at the top.
![image.png](/.attachments/image-8636acf7-56bf-4705-9c98-bcb87907a576.png)
 
14.	Click Deploy
15.	On Custom Deployment page, choose the Resource Group where the catalog already exists.
16.	You cannot edit the Location because it's defined in the template.  You can't change it without deleting the catalog.
17.	Agree to the terms and conditions, then click Purchase.  I haven't been able yet to see if this really costs money.
18.	The deployment will then start.  Basically this should be a no-op except for the changes made to the admins.
19.	Once the deployment completes the new admin should be able to log into the ADC portal.
20.	You can also go back to Resources, click the catalog name again, and Export Template again to verify the new admin was added.
 
References: [https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/quickstart-create-templates-use-the-portal](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/quickstart-create-templates-use-the-portal)
