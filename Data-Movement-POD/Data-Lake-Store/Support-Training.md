1. Start with this very basic training video: https://learn.microsoft.com/activity/S1791005/launch 
	
2. Create an ADLS using the portal: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-get-started-portal
	
3. If you aren't familiar with PowerShell, create an ADLS account using PowerShell, just to get yourself familiar with it: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-get-started-powershell
	
4. Familiarize yourself with the security overview.
 - MSFT Documentation: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview
	
5. This piece of documentation is the most critical. Be very, very familiar with the Access Control documentation. Most ADLS cases are solved with this documentation. Be familiar with what permissions are necessary, how to view them, what the Mask is and does and how to view it. Be familiar with super user, owning user, owning group, and assigned user and what actions each of those can perform. The documentation is somewhat unclear, hence all our problems with customers, so if you have any questions, just ask. 
- Support Training Security Overview: https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/280882/Access-Control-Overview
- MSFT Documentation - https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-access-control
	
6. Make sure you have access to Jarvis:https://jarvis-west.dc.ad.msft.net/FBF35882  

7. Familiarize yourself with Jarvis: https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1
	
7. Using your data lake and new knowledge about how to create access problems, let's simulate some!
a. Create an Azure Data Factory using this tutorial: https://docs.microsoft.com/en-us/azure/data-factory/load-azure-data-lake-store#create-a-data-factory
b. Assign permissions to this data factory using the MSI (Managed Service Identity) using this tutorial. First, apply good permissions: https://docs.microsoft.com/en-us/azure/data-factory/connector-azure-data-lake-store#managed-identity
c. Create a basic copy pipeline using this tutorial (but instead of using Amazon S3 as a source, just have a source folder and a sink folder in your Data lake store, and use the same data lake as both source and sink.)https://docs.microsoft.com/en-us/azure/data-factory/load-azure-data-lake-store#load-data-into-data-lake-storage-gen1
d. Once you have a copy job reliably working, assign bad permissions for your MSI. Re-run your pipeline to see your failure. Try different scenarios:
Incomplete ACL permissions.
Mask on a parent folder.
Mask on a child folder.
Adding a firewall to your data lake store.

8. For each of the scenarios you created before, use Jarvis to search for the error, so you can see what it looks like on the backend: https://jarvis-west.dc.ad.msft.net/FBF35882  

9. Your endpoint should be set to Diagnostic PROD
Your namespace should be AzureDataLake
Your Events to search should be CfeHttpEvent
![Jarvis Settings for ADL HTTP.jpg](/.attachments/Jarvis%20Settings%20for%20ADL%20HTTP-c635513a-26ee-4596-8db8-d896398664cb.jpg)

10. Set the Time range to the timestamp, paying attention to time zone, and set an area of time to search around it.
Role is the region of the data lake: 12 - Central US, 15 - East US 2...
Under Filtering Conditions, you can scan for data in various columns. KiwiAccountName is the name of the data lake.
After you run the query, at the bottom of the query page, check the columns button to see how many columns are being displayed.

11. Get connected with our Trouble shooting one note (created by the product group): https://microsoft.sharepoint.com/teams/ADLSGen1-CSSCollaboration/_layouts/15/Doc.aspx?sourcedoc={f47ad678-9d0c-4766-8a17-691ca6564b93}&action=edit&wd=target%28Supportability%20OneNote.one%7Cdffd0533-ef7f-4504-a41b-5e36641307b5%2FADLS%20Gen1%20Support%20Topics%5C%2FCommon%20Solutions%5C%2FScoping%20Questions%7Ca2c9949d-0899-43d4-9151-4466f73b4cd6%2F%29
	
12. Get familiar with best practices: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-best-practices
	
13. Get familiar with the diferances between ADLS Gen 1 and Blob Storage. (Note, ADLS Gen 2 is on top of blob storage): https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-comparison-with-blob-storage
	
14. Get familiar with V-Net Integration: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-network-security#optimal-routing-with-data-lake-storage-gen1-virtual-network-integration
	
15. Get Familiar with performance: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-performance-tuning-guidance
	
16. Get Familiar with HDI connectivity: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-hdinsight-hadoop-use-portal
