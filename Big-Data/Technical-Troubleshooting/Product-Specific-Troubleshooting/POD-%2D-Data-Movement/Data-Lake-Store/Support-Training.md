
[[_TOC_]]

#Troubleshooting/Support Training and Guides

1. 

2. Start with this very basic training course to understand what ADLS Gen 1 is: 
    https://learn.microsoft.com/activity/S1791005/launch 

2. Watch this ADLS Gen 1 Troubleshooting Training video to understand the basics of troubleshooting:
::: video
<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/7fa6730b-ef4f-4793-9e9c-2cfcb2f2ae6a?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>
:::

3. Permissions Understanding:
   https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/280901/Troubleshooting-Access
https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview

 Get connected with our Trouble shooting one note (created by the product group): https://microsoft.sharepoint.com/teams/ADLSGen1-CSSCollaboration/_layouts/15/Doc.aspx?sourcedoc={f47ad678-9d0c-4766-8a17-691ca6564b93}&action=edit&wd=target%28Supportability%20OneNote.one%7Cdffd0533-ef7f-4504-a41b-5e36641307b5%2FADLS%20Gen1%20Support%20Topics%5C%2FCommon%20Solutions%5C%2FScoping%20Questions%7Ca2c9949d-0899-43d4-9151-4466f73b4cd6%2F%29

	
12. Get familiar with best practices: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-best-practices

	
13. Get familiar with the diferances between ADLS Gen 1 and Blob Storage. (Note, ADLS Gen 2 is on top of blob storage): https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-comparison-with-blob-storage

	
14. Get familiar with V-Net Integration: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-network-security#optimal-routing-with-data-lake-storage-gen1-virtual-network-integration

	
15. Get Familiar with performance: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-performance-tuning-guidance

	
16. Get Familiar with HDI connectivity: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-hdinsight-hadoop-use-portal



#Hands-On Training

1. If you do not already have an Azure Subscription, or access to an Azure subscription, please either reach out to your manager/TA, or follow this guide to set up a subscription: https://microsoft.sharepoint.com/teams/azureinternal/CSSMgmt/SitePages/Home.aspx

2. Create an ADLS using the portal: 
   https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-get-started-portal
	
3. Create an ADLS account using PowerShell, to be familiar with Azure PowerSehll: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-get-started-powershell
	
4. Make sure you have access to Jarvis:https://jarvis-west.dc.ad.msft.net/FBF35882  

5. Familiarize yourself with Jarvis: https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1
	
7. Using your data lake and new knowledge about how to create access problems, let's simulate some!
a. Create an Azure Data Factory using this tutorial: https://docs.microsoft.com/en-us/azure/data-factory/load-azure-data-lake-store#create-a-data-factory
b. Assign permissions to this data factory using the MSI (Managed Service Identity) using this tutorial. First, apply good permissions: https://docs.microsoft.com/en-us/azure/data-factory/connector-azure-data-lake-store#managed-identity
c. Create a basic copy pipeline using this tutorial (but instead of using Amazon S3 as a source, just have a source folder and a sink folder in your Data lake store, and use the same data lake as both source and sink.)https://docs.microsoft.com/en-us/azure/data-factory/load-azure-data-lake-store#load-data-into-data-lake-storage-gen1
d. Once you have a copy job reliably working, assign bad permissions for your MSI. Re-run your pipeline to see your failure. Try different scenarios:
Incomplete ACL permissions.
Mask on a parent folder.
Mask on a child folder.
Adding a firewall to your data lake store.

8. For each of the scenarios you created before, use Jarvis to search for the error, so you can see what it looks like on the backend!
   [Jarvis Quick-Reference for ADLS](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1?anchor=quick-reference-for-getting-started-with-jarvis-for-adls)

