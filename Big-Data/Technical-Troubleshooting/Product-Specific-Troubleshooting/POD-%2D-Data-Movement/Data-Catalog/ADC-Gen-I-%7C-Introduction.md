# Getting Started


# **Technology Introduction**
Azure Data Catalog is a fully managed cloud service. It lets users discover the data sources they need and understand the data sources they find. At the same time, Data Catalog helps organizations get more value from their existing investments.

With Data Catalog, any user (analyst, data scientist, or developer) can discover, understand, and consume data sources. Data Catalog includes a crowdsourcing model of metadata and annotations. It is a single, central place for all of an organization's users to contribute their knowledge and build a community and culture of data.
<IMG  src="https://docs.microsoft.com/en-us/azure/data-catalog/media/data-catalog-what-is-data-catalog/data-catalog-capabilities.png"  alt="Data Catalog capabilities"/>

# **Wiki Project Babylon Guide** 
[Product Wiki Page Here](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/364918/Project-Babylon-(ADC-Gen-2))

# Project Babylon Teams CSS Collaboration Channel
[General](https://teams.microsoft.com/l/channel/19%3a9a0e973781f54c98a5fcc222ffa00ee3%40thread.tacv2/General?groupId=1943848d-4f61-482c-889e-c64a82245fb2&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47)

# **Training**
[Azure Data Catalog L100](https://microsoft.sharepoint.com/sites/infopedia/Pages/Docset-Viewer.aspx?did=G01KC-1-5843)

# **Online Support Documentation**
[Azure Data Catalog Overview](https://docs.microsoft.com/en-us/azure/data-catalog/overview)

# **Troubleshooting**
[Support Engineer Troubleshooting Guide](https://microsoft.sharepoint.com/teams/bidpwiki/Pages1/Azure%20Data%20Catalog.aspx)

# **Note**

Azure Data Catalog Tips & Troubleshooting [OneNote](https://microsoft.sharepoint.com/teams/bidpwiki/PublishingImages/Pages1/Azure%20Data%20Catalog/Azure%20Data%20Catalog.onepkg) present in above link.   The topic will help to assist the customer

# **ADC Daily Case Triage Meeting**
[M/F 12pm CST](https://teams.microsoft.com/l/meetup-join/19%3ameeting_YzVkMDUwZmItM2I0MC00MDBhLWI4ODYtNmM1MWNhYWI4YWQz%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%22360e5ec4-f6ed-4352-8919-83bdca7326d2%22%7d) Organizer Tiffany Fischer

# **SME** 
Use AVA in [Azure Purview Teams Channel](**Classification and Labeling (ADLS example)**
We are happy to share that classification and labeling report is now available for Azure Data Lake(ADLS) Gen 1/2 in addition to Azure Blob Storage, Azure Files and Amazon AWS S3 buckets.

 

The setup of scanning, classification and labeling of data in ADLS is very similar to how you configure Azure Blob Storge, just instead of choosing Blob Storage when adding Data Source you should choose ADLS.

 

Note that only newly added files (added, not scanned - after August 10th) to ADLS will be classified and labeled. Old existing files will not be labeled.

 

To configure data sources for classification and labeling you can watch the below videos which explain how to do it for Blob Storage so just choose ADLS instead.

 


	
Configure Blob storage for scan https://aka.ms/BabylonConfigureBlobScan (7 min)
	Babylon Classification and Labeling https://aka.ms/BabylonClassificationLabeling (14 min)
	
 

	
	 
	
	
 

	
FAQ
	
	What data sources scan results are reflected on the classification and labeling report?
	

		
Azure Blob Storage
		Azure Files
		AWS S3 data
		ADLS Gen 1\2
	
	
	What file types and which data sources are supported to be classified by Babylon?
	

		
All filetypes and Data sources that are supported for scanning by Babylon are also supported to be classified. 
	
	
	What file types and which data sources are supported to be labeled in Babylon?
	

		
Labeling is supported for unstructured data like Office file formats(CSV counts structure), PDF and TXT in all the data sources supported for classification and labeling report (see #1)
	
	
	What Classifications (AKA Sensitive Information Types) are supported in Babylon?
	

		
All out-of-the-box classifications are supported both for classifying and labeling items
		Customer classifications are supported for classification but not supported for association with labeling.
	
	
	How will Babylon be priced?
	

		
TBD.
	
	
	What is difference between classification and labelling?
	

		
Classification = sensitive information types (e.g. PCI, SSN) found in the data
		Labeling = the label taxonomy defined by an organization (e.g. Public, General, Confidential) within the M365 Security and Compliance Center and associated with specific classifications

**Walkthrough - How to create & use custom classification**
Create Custom Classification To apply to Data Source Scan 
[Training Video](https://msit.microsoftstream.com/video/f5fca3ff-0400-b9eb-d465-f1eb2b8aaba1) 

1) Create Classifications “Babylon_demo” 
![step1-classification.PNG](/.attachments/step1-classification-0c91c3e2-c626-442f-97e6-e9dcccf9523b.PNG)
 
2) Create Classification Rules “Babylon Demo” 
![step2-classification-rules.PNG](/.attachments/step2-classification-rules-7c97c896-db48-4c7d-b340-2b8eea8c2de5.PNG)
 
3) Create Scan Rule Sets “babylon_demo” 
![step3-createscan-rule-set.PNG](/.attachments/step3-createscan-rule-set-cde4780c-eef6-4125-a76c-9962f7fa4488.PNG)
![step4-scan-rules-set-files.PNG](/.attachments/step4-scan-rules-set-files-f5d122cf-721f-4961-8e54-ea72a9120715.PNG)
![step5-scan-rules-set-select-classification-rules.PNG](/.attachments/step5-scan-rules-set-select-classification-rules-280cafb0-c5dd-4919-8f16-8d11e59e30d6.PNG)

4) Create new Scan using Scan Rule Set 
![setp6-Data-source-select-source.PNG](/.attachments/setp6-Data-source-select-source-142431f1-c803-4380-b494-d3bd61effc7a.PNG)
![step7-Data-source-create-scan.PNG](/.attachments/step7-Data-source-create-scan-0d952a27-c153-4df2-a000-119f97efa6d7.PNG)
![step8-data-scan-scope-scan-folders-files.PNG](/.attachments/step8-data-scan-scope-scan-folders-files-f5cc56eb-8f7c-4604-83b9-0e7dd72bbb6a.PNG)
![step9-Data-source-scan-trigger.PNG](/.attachments/step9-Data-source-scan-trigger-7b682a53-c9d2-4110-8bb2-649acf608769.PNG)
![step10-Data-Source-select-scan-rule-set-to-run-against-source.PNG](/.attachments/step10-Data-Source-select-scan-rule-set-to-run-against-source-52861a35-f26b-420d-a60b-05c053e7b3e8.PNG)
 
5) Search the Data Catalog for all Sources using a classification 
![step11-search-catalog.PNG](/.attachments/step11-search-catalog-1fe3edde-a2aa-49b0-9767-1b815365f465.PNG)

[TSG WIKI](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&pagePath=%2FBig%20Data%2FTechnical%20Troubleshooting%2FProduct%20Specific%20Troubleshooting%2FPOD%20%252D%20Data%20Movement%2FData%20Catalog%2FPurview%20(Project%20Babylon)%2FTSGs%20%252D%20Project%20Babylon%2FClassification%20%26%20Labeling&pageId=403387&_a=edit)) to contact SME



