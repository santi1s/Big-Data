
#Overview
Guided troubleshooters enable to stitch together Insights and Content into a Workflow that efficiently guides the users through the series of steps required to diagnose a problem.

![1.png](/.attachments/1-2c4ffb81-bc51-49f0-8724-eca0a4ded74b.png)

#Troubleshooter Components
TSG Example: Cluster Launch Issue due to Subscription Limit

![2.png](/.attachments/2-b405d434-3390-4824-b483-17ff9cb1d6f7.png)
![3.png](/.attachments/3-45e629a1-0510-4755-a285-1a0934185826.png)

#Parts of a Guided Troubleshooter

- Guided Troubleshooter (TSG) Summary - This is the text that describes the troubleshooter. It is presented before the troubleshooter is started. 
This content is authored using Markdown and stored in the Azure Self-help Github. 

![4.png](/.attachments/4-1900a75f-8a45-47ff-9bae-4e9789ac71a5.png)

- Guided Troubleshooter (TSG) Content - The information that is presented in the troubleshooter is stored in a content step. Each content step is stored in a separate file. 
Content is authored using Markdown and stored in the Azure Self-help Github. 

![5.png](/.attachments/5-ca266586-811e-43ec-bf7e-2288cafb2113.png)

- Guided Troubleshooter (TSG) Question - The questions that are asked after a content step are stored in separate files. One question file can be used multiple times within the same Troubleshooter. 
Content is authored using Markdown and stored in the Azure Self-help Github. 

- Guided Troubleshooter (TSG) Insight

![6.png](/.attachments/6-3315e17f-6ba3-4172-b7c5-1d0db36ceb1f.png)

- Guided Troubleshooter (TSG) Definition - The ASC dev team will create the troubleshooter definition.

#Prerequisites
The following are the main stuff you need to do before starting with your guided troubleshooter: 
- Join the [ASC and ADS Repos](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fazuresupportcenterdocs.azurewebsites.net%2Fdevelopers%2FOnboarding%2FGettingAccess.html&data=02%7C01%7CVimal.Sharma%40microsoft.com%7C1304d0f1ad3446e8e6f308d7e76a5737%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637232316238892210&sdata=xSa0WBDd8F2A6M6U50i9kGiiSUC4104yXE5%2FenWJRs4%3D&reserved=0) – In MyAccess, please request for groups **19126** and **19401**. 
- Email [Saranga Goswami](mailto:sarangag@microsoft.com) and ask him to add you to Geneva Automation in PPE.
- Join ASC Flight 3 security group from [here](https://idweb/IdentityManagement/aspx/Groups/AllGroups.aspx?searchtype=3a8f0ff2-72d2-428b-8e5b-2b3653cbca8e&content=ASCFlight3&popupFromClipboard=%2Fidentitymanagement%2Faspx%2FGroups%2FEditGroup.aspx%3Fid%3D36520db8-c534-43ab-b675-f3bc1b404adc) to get troubleshooter access in ASC PPE.


#Create the Troubleshooter
You need to complete the following steps to create a troubleshooter:

##Step 1 - Identify TSG
Identify the TSG you want to build the troubleshooter for. It is important to have the support topic levels clear L1\L2\L3. You can confirm the support topics mapping from [here](https://msaas.support.microsoft.com/sap/manage) and/or [here](https://aka.ms/selfhelppreviewold). 

##Step 2 - Onboard a new TSG
-    Go to [Create TSG](https://asctsgreporting.azurewebsites.net/CreateTSG) page.
-    Choose an easy name for the TSG and press Create TSG. This will be the name that appears here in ASC:

![7.png](/.attachments/7-98efce9a-a9c1-4a2b-a0d1-517ee9ed675c.png)

- Go through steps 1-12 to provide TSG name, guid, summary description, resource type, sap path and support topic.


##Step 3 - Design TSG

- Go through step 13 to design your TSG. Please [refer to this recording to understand how to use the designer](https://microsoft.sharepoint.com/:v:/t/ProjectCentennial/EZaaWFJ6DplPimbV-2kaztUBB9zuakFcjACtqjFyvy9azA?e=S0piQu).

![designtsg1.png](/.attachments/designtsg1-76533cc5-2e98-490d-940b-24e0f600c49f.png)

- Make sure to optimize the workflow by having minimal necessary steps. 


##Step 4 - Publish TSG contents into the repositories

Once you finished designing your TSG and saved it, you need to publish contents into repos:

- Go back to onboarding page and jump to step 26 to download the deployment package.

![deppackage.png](/.attachments/deppackage-e83328e8-5d92-47ff-8bf6-6687c3375285.png)

- The compressed file will have all Decision steps (.md), Solution steps (.tsginsight), Workflow steps (.json).

![pkgfiles.png](/.attachments/pkgfiles-45b16f4e-f94f-48b3-9d97-f52de7db1c30.png)

   - Follow these steps to upload each in its correct repository:

     **Decision steps - md**
     1. Go to [Azure Github Self-Help repository](https://github.com/Azure/SelfHelpContent/tree/master/articles).
     2. Create a new folder for your TSG.
     3.  Upload TSG summary file from onboarding step 12 along with .md files from downloaded package into TSG directory.
     4. Create pull request.


     **Solution steps - tsginsight**
     1. Go to [ASC TSG Insight Repo](https://msazure.visualstudio.com/One/_git/EngSys-ads-partner?path=%2Fsrc%2FDiagnosticsApps&version=GBmaster).
     2. Create a new branch and select your product directory.
     3. Navigate to Definitions > tsginsights.
     4. Create a new folder for your TSG, and upload the .tsginsight files from downloaded package.
     5. Commit and create pull request.

     **Workflow steps - json**
  
   
     1. Go to [asc-workflow-metrics repo workflows - Repos](https://msazure.visualstudio.com/One/_git/EngSys-ads-ascworkflow-metrics?path=%2Fworkflows).
     2. Create a new folder (use something obvious like TSG name) under the workflows folder, put an empty file in it.
     3. Commit to a new branch.
     4. Upload all the JSON files in the download package to the new folder.
     5. Delete the empty file in step 2, and Commit again.
     6. Go to [Geneva Automation](https://jarvis-west.dc.ad.msft.net/settings/automation) and choose your branch from step 3 under ASCWorkflows.
     7. Create a pull request from GA UI, and approve it.
     8. An additional step here is to get Geneva automation URL to complete the onboarding. Go to the first step of your TSG workflow and copy the http post URL:

![genevalurl.png](/.attachments/genevalurl-6ae5994f-d165-4df3-9525-73e85e6ada9e.png) 

## Step 5 - Finish Onboarding

- Go back to onboarding page and paste URL in step 24. Make sure to add "/api" before "monitoringAccounts"

![step24url.png](/.attachments/step24url-bca198e4-1412-494e-ad06-b52c87b2c9dc.png)

- Go to step 25 to get TSG definition file. Upload it to [ASC TSG Definition Repo](https://msazure.visualstudio.com/One/_git/EngSys-ads-definitions?path=%2Fsrc%2FNoCodeDiagnostics%2FInsights%2FTroubleshooterSolutionJsons) under your product ownership directory. Create the pull request and approve.

- Once all PRs are approved, complete the remaining onboarding steps.

##Step 6 - Test your TSG
Once it is confirmed that troubleshooter has been published:

- Find a case that matches the resource type and support topic of your TSG.
- Go to ASC and walk the workflow and test it.

**Note:** 
In case you can’t see the troubleshooter in ASC, you would need to request access from [here](https://idweb/IdentityManagement/aspx/Groups/AllGroups.aspx?searchtype=3a8f0ff2-72d2-428b-8e5b-2b3653cbca8e&content=ASCFlight3&popupFromClipboard=%2Fidentitymanagement%2Faspx%2FGroups%2FEditGroup.aspx%3Fid%3D36520db8-c534-43ab-b675-f3bc1b404adc).


## Resources

- [Onboarding and Training](https://supportability.visualstudio.com/CSS%20GWT%20Initiative/_wiki/wikis/CSS%20GWT%20Initiative.wiki/421439/Resources?anchor=onboarding)
- [Repos](https://supportability.visualstudio.com/CSS%20GWT%20Initiative/_wiki/wikis/CSS%20GWT%20Initiative.wiki/421439/Resources?anchor=repos)
- [Troubleshooting](https://supportability.visualstudio.com/CSS%20GWT%20Initiative/_wiki/wikis/CSS%20GWT%20Initiative.wiki/421439/Resources?anchor=troubleshooting)
- [Other](https://supportability.visualstudio.com/CSS%20GWT%20Initiative/_wiki/wikis/CSS%20GWT%20Initiative.wiki/421439/Resources?anchor=other)


You can reach **JR Mayberry (rimayber)** from APAC or **Chad Mathiason (chadmat)** from North America if you need help.









