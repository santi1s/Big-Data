<span style="color:#DF0101;">**Notice ADLS gen1 is due for retirement, for more info check out this**</span> [ADLS gen1 Retirement plan TSG](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/444557/ADLS-gen-1-Retirement-plan)

[[_TOC_]]

#Troubleshooting Training

**After completing all steps in this troubleshooting training guide, you should be able to resolve 99% of ADLS cases.**

**Steps 1-5 are the most important, as these cover Microsoft training, troubleshooting training from your peers, and a deep dive into ADLS Permissions.**

1. Start with this very basic training course to understand what ADLS Gen 1 is: 
    https://learn.microsoft.com/activity/S1791005/launch 

2. Watch this ADLS Gen 1 Troubleshooting Training video to understand the basics of troubleshooting ADLS Cases:

<center>

::: video
<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/7fa6730b-ef4f-4793-9e9c-2cfcb2f2ae6a?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>
:::

Deck: [Data Lake Gen 1 Troubleshooting.pptx](/.attachments/Data%20Lake%20Gen%201%20Troubleshooting-676e6d73-0729-4173-9dfb-51ac20387b1a.pptx)
</center> 

3. Get familiar with the differences between ADLS Gen 1 and Blob Storage. (Note, ADLS Gen 2 is on top of blob storage): https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-comparison-with-blob-storage

4. Follow these three training sessions in this link:
[Full Troubleshooting Training Guides](https://microsofteur.sharepoint.com/teams/WWDataMovement/Shared%20Documents/Forms/AllItems.aspx?id=%2Fteams%2FWWDataMovement%2FShared%20Documents%2FGeneral%2FADLS%20Gen1%20Training&p=true&originalPath=aHR0cHM6Ly9taWNyb3NvZnRldXIuc2hhcmVwb2ludC5jb20vOmY6L3QvV1dEYXRhTW92ZW1lbnQvRXFZczB6T2F4b2RJalRNbUtPcjloa1lCUkltbVhiMmlXT3hhQnM1eEpXeUxWQT9ydGltZT03Qk5FUUhrNDJFZw)
**These training sessions cover ADLS Troubleshooting more deeply, and should allow you to resolve 99% of data lake cases once you have completed them.**

5. Now that you have troubleshooting basics and experience, follow these guides for a full understanding of Data Lake Access, and Troubleshooting Data Lake Access:
**[Microsoft Access Documentation](https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-security-overview)**
**[Full Review of ADLS Access and Issues](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/280882/Access-Control-Overview)** 
**[Guide to Troubleshooting Access](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/280901/Troubleshooting-Access)**

6. Review our [Jarvis for ADLS Gen 1 Guide](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/285440/Jarvis-for-ADLS-Gen-1), which will take you through the specifics on how to search Jarvis Logs for ADLS Gen 1.

6. Get connected with the [Product Team's troubleshooting OneNote]( https://microsoft.sharepoint.com/teams/ADLSGen1-CSSCollaboration/_layouts/15/Doc.aspx?sourcedoc={f47ad678-9d0c-4766-8a17-691ca6564b93}&action=edit&wd=target%28Supportability%20OneNote.one%7Cdffd0533-ef7f-4504-a41b-5e36641307b5%2FADLS%20Gen1%20Support%20Topics%5C%2FCommon%20Solutions%5C%2FScoping%20Questions%7Ca2c9949d-0899-43d4-9151-4466f73b4cd6%2F%29). ADLS Error Codes and some of our TSGs are housed here.

8. Check out our [Wiki Troubleshooting Guides (TSGs)](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/276255/TSGs), which cover some specific errors you may encounter:
![image.png](/.attachments/image-7174168f-604e-4204-8fd7-039c69af7440.png)

	
7. Get familiar with Data Lake best practices: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-best-practices


8. Get familiar with V-Net Integration: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-network-security#optimal-routing-with-data-lake-storage-gen1-virtual-network-integration

	
9. Get Familiar with performance: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-performance-tuning-guidance

	
10. Get Familiar with HDI connectivity: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-hdinsight-hadoop-use-portal



#Hands-On Training

This hands on training guide will take you through creating a data lake store, simulating some ADLS permissions issues, and looking up those issues in Jarvis to familiarize yourself with the troubleshooting process.

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

