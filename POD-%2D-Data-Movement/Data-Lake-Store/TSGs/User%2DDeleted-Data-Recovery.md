[Data Lake TSG OneNote](https://microsoft.sharepoint.com/teams/ADLSGen1-CSSCollaboration/_layouts/15/Doc.aspx?sourcedoc={f47ad678-9d0c-4766-8a17-691ca6564b93}&action=edit&wd=target%28Supportability%20OneNote.one%7Cdffd0533-ef7f-4504-a41b-5e36641307b5%2FADLS%20Gen1%20Support%20Topics%5C%2FCommon%20Solutions%5C%2FScoping%20Questions%7Ca2c9949d-0899-43d4-9151-4466f73b4cd6%2F%29)

[[_TOC_]]

#First Step
**Recovery of user-deleted data is not supported, and so cannot be guaranteed, but we will make our best effort to restore their data.**
Communicate this to your customer, to set expectations, and gather the information below based on their situation.

# Recover Files or Folders That Have Been Deleted

Gather the below information, and then create a **Sev 3** ICM(https://icm.ad.msft.net/imp/v3/incidents/create) to the Azure Data Lake Store/Store team setting the Type of Incident to File/Folder Deletion/Recovery.

**Information to Be Gathered from Customer:**
- ADLS Resource Name
- ADLS Resource Region
- Files/Folder Path that were deleted
- Approx Timestamp when the data was deleted
- Was it a Single delete action of a parent folder, or multiple/recursive delete process
- Do we have permission from the customer to restore the data?
- Should the data be restored to the original folder, or to some other folder (like <original folder name>_restore)?

**Information to be Gathered by CSS:**
- Find the Jarvis query showing the path deleted.

### Jarvis Instructions

_For a full Jarvis guide, check here: [Jarvis for ADLS Gen 1](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1)_

1. Follow the link: https://jarvis-west.dc.ad.msft.net/C8EDB5E 

2. Ensure that Endpoint is set to Diagnostics PROD, Namespace is set to ADLSInternalProd, Events to search is set to CfeHttp Event.
![image.png](/.attachments/image-9195af1f-f379-4bb4-838a-69a8769c3b6e.png)

3. Set Time range to the timestamp you are searching for.

4.  Under Scoping Conditions, either set Role or Region to the region of the data lake:
Region is Clear
For Role, you can use this chart: [Role by Region List](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1?anchor='role'-values-mapping-to-region)

5. Set KiwiAccountName contans to the name of the data lake, Path contains to the path of the affected data, and set Operation to contains "DELETE"
![Jarvis DELETE Operation Settings.jpg](/.attachments/Jarvis%20DELETE%20Operation%20Settings-7fca3459-a242-4ef4-bb29-01bc8056476e.jpg)

6. Run your query, and search for the Delete Operations.

7. Once you have found the delete operations:
a. If it is a single operation, gather the Activity ID for the product team and povide that in the ICM along with the Jarvis link. (You can find the Jarvis link at the top right of the lefthand blade, under the little link image)
![Jarvis Link Link.jpg](/.attachments/Jarvis%20Link%20Link-fc343569-0146-44a6-a90a-727cd3ad4763.jpg)
b. If it is multiple operations, provide the Jarvis link with all delete operations to product team.
(You can find the Jarvis link at the top right of the lefthand blade, under the little link image)
![Jarvis Link Link.jpg](/.attachments/Jarvis%20Link%20Link-fc343569-0146-44a6-a90a-727cd3ad4763.jpg)

#  Recover an Entire Data Lake That Was Deleted

## Was the deleted data lake resource encrypted?
_Yes_ - We cannot restore this data lake.
_No_ - Open an ICM with the Data Lake Store/Store team, and select the "Account Related" Type Of Issue
https://icm.ad.msft.net/imp/v3/incidents/create
Provide the name of the resource, subscription ID, resource group name, region, and the time of deletion to the product team.
