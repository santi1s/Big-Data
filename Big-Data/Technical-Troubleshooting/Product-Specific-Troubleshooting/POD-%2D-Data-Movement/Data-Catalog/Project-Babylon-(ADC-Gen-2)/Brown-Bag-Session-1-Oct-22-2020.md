All information is captured in this OneNote section Babylon Demo Cheat Sheet  [(Web view)](https://microsoft.sharepoint.com/teams/ProjectBabylon/_layouts/15/Doc.aspx?sourcedoc={bd845354-4651-4d06-9f96-51924470dc73}&action=edit&wd=target%28Demos.one%7C353df8e5-6606-41f3-96de-4e8cbbe62b8a%2FBabylon%20Demo%20Cheat%20Sheet%7C4b9603af-9006-7343-963d-2977cb11f653%2F%29)

Detailed information for demo env for labeling\security insights:
For any question please Contact Kevin McKinnerney & Hen David
 
Connection details:
User:
John@ip4demo.com (Contributor rights on Babylon + Can see label configuration in SCC)
 
pW:
*********
 
URL:
https://web.babylon.azure.com/resource/BabylonCatalog/?feature.tenant=fc676d39-8548-4816-8b88-1b9eb74a0399&feature.ext.sensitivity=%7B%22wave2%22:true%7D&feature.ext.catalog={%22amazonPreview%22:%22true%22}
 
This URL in including 2 feature flags (AWS + Classification report) and redirecting to the 'BabylonCatalog" account
 
3 catalogs (all enabled for classification and labeling for Azure and AWS):
•	IP4demobabylon - initial account with different integrations
•	BabylonDemo1 - created by HenD for testing and recording videos
•	BabylonCatalog (use this account) - newest created by Kevin for testing self-hosted IR and SQL on-prem
 
 
Feature Flags in use:
 
Babylon Feature flags  ([Web view](https://microsoft.sharepoint.com/teams/ProjectBabylon/_layouts/15/Doc.aspx?sourcedoc={bd845354-4651-4d06-9f96-51924470dc73}&action=edit&wd=target%28Supportability.one%7C492ac8f0-596f-4cea-8d30-a7260f2c6c5f%2FBabylon%20Feature%20flags%7Cd63dc2b0-3756-4c51-86b8-7d7cb2b20a09%2F%29))
Use the below feature flags - already appended to this URL
?feature.tenant=fc676d39-8548-4816-8b88-1b9eb74a0399&feature.ext.sensitivity=%7B%22wave2%22:true%7D&feature.ext.catalog={%22amazonPreview%22:%22true%22}
 
Labeling Management portal in SCC:
 
https://compliance.microsoft.com/informationprotection?viewid=sensitivitylabels
 
 
How to start with start with Security Insights, Labeling and configuration: 
Training videos
1.	Babylon Security Insights presentation https://aka.ms/BabylonSecurityPresentation (8 min)
2.	Babylon Classification and Labeling configure & test https://aka.ms/BabylonClassificationLabeling (14 min)
3.	Configure AWS S3 bucket for scan  https://aka.ms/BabylonConfigureAWSScan (9 min)
 
FAQ
4.	What data sources scan results are reflected on the classification and labeling report?
•	Azure Blob Storage
•	Azure Files
•	AWS S3 data
•	ADLS Gen1/2
5.	What file types and which data sources are supported to be classified by Babylon?
•	All filetypes and Data sources that are supported for scanning by Babylon are also supported to be classified. 
6.	What file types and which data sources are supported to be labeled in Babylon?
•	Labeling is supported for unstructured data like Office file formats, PDF and TXT in all the data sources supported for classification and labeling report (see #1). Note: CSV files cannot be labeled given they are considered structured file format.
7.	What Classifications (AKA Sensitive Information Types) are supported in Babylon?
•	All out-of-the-box classifications are supported both for classifying and labeling items
•	Customer classifications are supported for classification but not supported for association with labeling.
8.	What is difference between classification and labelling?
•	Classification = sensitive information types (e.g. PCI, SSN) found in the data
•	Labeling = the label taxonomy defined by an organization (e.g. Public, General, Confidential) within the M365 Security and Compliance Center and associated with specific classifications


