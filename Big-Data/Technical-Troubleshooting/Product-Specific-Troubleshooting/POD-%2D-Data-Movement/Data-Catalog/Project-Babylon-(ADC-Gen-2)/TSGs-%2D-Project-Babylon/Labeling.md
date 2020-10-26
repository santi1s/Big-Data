**Detailed information for demo env for labeling\security insights:**
For any question please Contact Kevin McKinnerney & Hen David
 
**Demo Environment Connection details:**
User:
John@ip4demo.com (Contributor rights on Babylon + Can see label configuration in SCC)
 
pW:
\*********
 
URL:
https://web.babylon.azure.com/resource/BabylonCatalog/?feature.tenant=fc676d39-8548-4816-8b88-1b9eb74a0399&feature.ext.sensitivity=%7B%22wave2%22:true%7D&feature.ext.catalog={%22amazonPreview%22:%22true%22}
 
This URL in including 2 feature flags (AWS + Classification report) and redirecting to the 'BabylonCatalog" account
 
3 catalogs (all enabled for classification and labeling for Azure and AWS):
-    IP4demobabylon - initial account with different integrations
-    BabylonDemo1 - created by HenD for testing and recording videos
-    BabylonCatalog (use this account) - newest created by Kevin for testing self-hosted IR and SQL on-prem
 
 
**Feature Flags in use:**
 
[Babylon Feature flags  (Web view)](onenote:Supportability.one#Babylon%20Feature%20flags&section-id={492AC8F0-596F-4CEA-8D30-A7260F2C6C5F}&page-id={D63DC2B0-3756-4C51-86B8-7D7CB2B20A09}&end&base-path=https://microsoft.sharepoint.com/teams/ProjectBabylon/SiteAssets/Project%20Babylon%20Notebook)
Use the below feature flags - already appended to this URL
?feature.tenant=fc676d39-8548-4816-8b88-1b9eb74a0399&feature.ext.sensitivity=%7B%22wave2%22:true%7D&feature.ext.catalog={%22amazonPreview%22:%22true%22}
 
**Labeling Management portal in SCC:**
 
https://compliance.microsoft.com/informationprotection?viewid=sensitivitylabels
 
 
**How to start with start with Security Insights, Labeling and configuration:** 
Training videos
1. Babylon Security Insights presentation https://aka.ms/BabylonSecurityPresentation (8 min)
1. Babylon Classification and Labeling configure & test https://aka.ms/BabylonClassificationLabeling (14 min)
1. Configure AWS S3 bucket for scan  https://aka.ms/BabylonConfigureAWSScan (9 min)

**FAQ**
1. What data sources scan results are reflected on the classification and labeling report?
   - Azure Blob Storage
   - Azure Files
   - AWS S3 data
   - ADLS Gen1/2
2.	What file types and which data sources are supported to be classified by Babylon?
   - All filetypes and Data sources that are supported for scanning by Babylon are also supported to be classified. 
3.	What file types and which data sources are supported to be labeled in Babylon?
    - Labeling is supported for unstructured data like Office file formats, PDF and TXT in all the data sources supported for classification and labeling report (see #1). Note: CSV files cannot be labeled given they are considered structured file format.
4.	What Classifications (AKA Sensitive Information Types) are supported in Babylon?
    - All out-of-the-box classifications are supported both for classifying and labeling items
    - Customer classifications are supported for classification but not supported for association with labeling.
5.	What is difference between classification and labelling?
    - Classification = sensitive information types (e.g. PCI, SSN) found in the data
    - Labeling = the label taxonomy defined by an organization (e.g. Public, General, Confidential) within the M365 Security and Compliance Center and associated with specific classifications
