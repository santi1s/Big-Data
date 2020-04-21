[[_TOC_]]


****

##I. Courses for Azure Government

1. New Hire Azure BootCamp – Azure Government: 

    https://learningplayer.microsoft.com/activity/S2828772/launch 

2. New Hire Azure BootCamp – What is Azure Government: 

    https://www.youtube.com/watch?v=_WcyWeARD2Y 

##II. Training Materials

1. Azure Government Online Documentation: 

    https://docs.microsoft.com/en-us/azure/azure-government/ 

2. Azure Government Blog: 

    https://azure.microsoft.com/en-us/blog/topics/government/ 

 
##III. Azure Government Case Access

The process could take a week or more depending on your circumstances.  Please read through the instructions before beginning. 

_For emergency temporary accesses contact "Temporary Special Access Case Provisioning" (tspecialaccess@microsoft.com) alias for short term/single instance access._

Please follow these steps and let your manager know if you have any questions/issues:  

1. In Browser Navigate to:  https://osp.office.net/idm/identity/access/Clearances 

2. Click on the Blue Button “Request Clearances…” 

3. A new blade will open on the right.  Please select “Proof of citizenship” and in the Country Code select “US”.  Click Request. 

4. Gather the necessary documents shown in [US Citizenship attestation for FTEs](https://microsoft.sharepoint.com/:w:/t/USGovCloudSupport/EanFB2HkMZpFsglChGgSDGYBy_DkKNc_kbl6dFeuSFIVuQ?e=QZ1Nmb).  If you do not have a passport and your name has changed from what your birth certificate says, then you would need to obtain documentation of the name change.   
_The process for obtaining a passport or proof of name change could take weeks._ 

5. Set up a meeting in Teams with the Citizenship Delegate for your area (Ex. Las Colinas, TX is Cindi S., CindiSa in HR) to bring the necessary documents shown in [US Citizenship attestation for FTEs](https://microsoft.sharepoint.com/:w:/t/USGovCloudSupport/EanFB2HkMZpFsglChGgSDGYBy_DkKNc_kbl6dFeuSFIVuQ?e=QZ1Nmb).  HR will verify the documentation in order to complete the first part of the process.   
_This verification process may take up to 48 business hours._ 

6. Visit https://osp.office.net/idm/identity/access/Clearances and once you see "Citizenship = US" under "Granted", you are all set to proceed to the next step in the process.   
_If this takes longer than 5-7 business days, let me or Todd know._ 

7. The next step in the process is to follow the instructions on the [Microsoft US Government Support page](https://microsoft.sharepoint.com/teams/USGovCloudSupport/SitePages/How.aspx?web=1).  Following these instructions gets you access to Azure government cases in Service Desk.  Once your request has been received and your information is being validated against the HR systems (ECS) you will receive an email. You can also see the [latest status on your request from here](https://microsoft.sharepoint.com/teams/USGovCloudSupport/Lists/Standing%20Access%20Requests/Public.aspx).   
_This step may take up to 48 business hours to complete._ 

8. The final step in this process is to request a subscription in the Azure Government (Fairfax) environment for any testing or repro work you will need to do.  That [process is located here](https://ageaccounts.azurewebsites.us/).   
_This step may take a week or more._ 

##IV. Azure Government URLs and ports

|Azure|Azure Gov| Azure China|Outbound port|Description|
|--|--|--|--|--|
|*.servicebus.windows.net|*.servicebus.usgovcloudapi.net|*.servicebus.chinacloudapi.cn|443|Required by the self-hosted integration runtime to connect to data movement services in Azure Data Factory.|
|*.frontend.clouddatahub.net|*.frontend.datamovement.azure.us|*.frontend.datamovement.azure.cn|443|Required by the self-hosted integration runtime to connect to the Data Factory service.|
|download.microsoft.com|download.microsoft.com|download.microsoft.com|443|Required by the self-hosted integration runtime for downloading the updates. If you have disabled auto-update, you can skip configuring this|
|*.core.windows.net|*.core.usgovcloudapi.net|*.core.chinacloudapi.cn|443|Used by the self-hosted integration runtime to connect to the Azure storage account when you use the staged copy feature.|
|*.database.windows.net|*.database.usgovcloudapi.net|*.database.chinacloudapi.cn|1433|Required only when you copy from or to Azure SQL Database or Azure SQL Data Warehouse and optional otherwise. Use the staged-copy feature to copy data to SQL Database or SQL Data Warehouse without opening port 1433.|

 ****