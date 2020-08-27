In the case that the user has owner permissions to the Azure Data Catalog in the Azure Portal, they can add or delete the ADC Administrator as follows:

====================
 
	1. Login to the portal (portal.azure.com).
	2. Choose All Resources.
	3. Locate the Azure Data Catalog resource, click on it.
	4. Click on “Export Template”.
	5. Look at the json for the template and it will list the admins for the catalog.

Example provided below:
 
    "resources": [
        {
            "type": "Microsoft.DataCatalog/catalogs",
            "apiVersion": "2016-03-30",
            "name": "[parameters('catalogs_MyDataCatalog_name')]",
            "location": "westus",
            "tags": {
                "TagName1": "TagValue1"
            },
            "properties": {
                "sku": "Free",
                "admins": [
                    {
                        "upn": "admin1@domain.com",
                        "objectId": "xxxxxxxx"
                    }
                ],
