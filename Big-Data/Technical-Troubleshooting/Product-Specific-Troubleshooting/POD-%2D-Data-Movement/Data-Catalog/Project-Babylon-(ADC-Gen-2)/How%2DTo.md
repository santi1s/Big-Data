#Getting Started with using Data Catalog
I. **[Create a Data Catalog, Publish a data source and create a label](https://msit.microsoftstream.com/video/b0f999a9-e399-4253-acfb-4015c12adbce?referrer=https:%2F%2Fstatics.teams.cdn.office.net%2Fevergreen-assets%2Fsafelinks%2F1%2Fatp-safelinks.html)**

II. **Classification and Labeling (ADLS example)**
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