
##**Note:** For [step 4](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/337043/ASC-Guided-Troubleshooter?anchor=step-4---publish-content-into-the-repositories), please follow the [Self-Authoring (Advanced)](/EEE-%2D-Embedded-Escalation-Engineer-Training-and-Reference/ASC-Guided-Troubleshooter/Self%2DAuthoring-\(Advanced\)) for importing and managing all of these files on your own. 

-----

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

- Go through steps 1-10 to provide TSG name, guid, summary description, resource type, sap path and support topic.


##Step 3 - Build the TSG workflow 
You can do it manually in Visio or through Excel. As we now have a powershell script to create visio from Excel automatically, it is **highly recommended to use Excel here**. Make sure to optimize the workflow by having minimal necessary steps. 
XLS structure would be similar to this:

![8.png](/.attachments/8-73c1214c-2516-4154-bd3d-e554fcc4702b.png)

You can follow these instructions to go from **XLS -> VISIO**:

![9.png](/.attachments/9-07d75a96-713b-40ff-a289-2aca384b476d.png)
 
Content and Customer Message would be the text that will be presented in each of the steps in the Troubleshooter. Troubleshooter would have start, decision, or end steps based on the workflow. Please check this example [here](https://microsofteur-my.sharepoint.com/:f:/g/personal/lahaddad_microsoft_com/Ep75Pi54gbtBpIHnSCNQgXgB-BxnF-6Phh8SB_io1clu2g).

**Note:** 
- Content steps are in markdown format. Remember to use numbered lists not bullets.
- Customer message actual implementation is some strange mix of HTML and feature-reduced markdown. You can use markdown format for it and do adjustments during the testing process if needed.
- Every Content Step title should ideally start with “Check if…” or “Check for” if possible, and every Content Step Sub-title should ideally start with “How to…”.

##Step 4 - Publish content into the repositories

Please follow the [Self-Authoring (Advanced)](/EEE-%2D-Embedded-Escalation-Engineer-Training-and-Reference/ASC-Guided-Troubleshooter/Self%2DAuthoring-\(Advanced\)) for importing and managing all of these files on your own through forking SelfHelp and submitting a PR. 


It is likely you will need to re-iterate on content to adjust formatting, fix spelling errors, etc. 

##Step 5 - Test your content 
Once it is confirmed that troubleshooter has been published:
- Go to the [manage TSG](https://asctsgreporting.azurewebsites.net/TSGList/Onboarding) page and select your TSG.
- There are steps about Testing your Articles and Testing Insights – go to both of those links.
- Click on each GUID to load the content on the right side and verify you are OK with the formatting and content.
- Find a case that matches the resource type and support topic of your TSG.
- Go to ASC and walk the workflow and test it.

**Note:** 
In case you can’t see the troubleshooter in ASC, you would need to request access from [here](https://idweb/IdentityManagement/aspx/Groups/AllGroups.aspx?searchtype=3a8f0ff2-72d2-428b-8e5b-2b3653cbca8e&content=ASCFlight3&popupFromClipboard=%2Fidentitymanagement%2Faspx%2FGroups%2FEditGroup.aspx%3Fid%3D36520db8-c534-43ab-b675-f3bc1b404adc).

#References
- Recordings - [Week 1](https://web.microsoftstream.com/video/1f25a1ff-0400-96d0-52e9-f1ea8a36e459), [Week 2](https://web.microsoftstream.com/video/1723a1ff-0400-96d1-5da1-f1ea8fb594e3), [Week 3](https://web.microsoftstream.com/video/b12ca1ff-0400-96d0-65d9-f1ea95352f9e)
- Overall [documentation](https://microsoft.sharepoint.com/:w:/t/GuidedWorkflowV-Team/EXErVtUvuQhCmEWpqtFjmV0B6TLtKW-ExomN1v5Fzo6Sxg?e=TgVKGO)
- Samples on [steps](https://microsoft.sharepoint.com/:t:/r/teams/ProjectCentennial/Shared%20Documents/TSGAuthor/TSGContent.txt?csf=1&web=1&e=qSdqB0), [visio](https://microsofteur-my.sharepoint.com/:u:/g/personal/lahaddad_microsoft_com/EQ3HJ2FzsINNk7piskw4j8QBu-XKEjvdAiBmSJ8Bf98MFg?e=naKtmd), and [xls](https://microsoft.sharepoint.com/:x:/r/teams/ProjectCentennial/_layouts/15/Doc.aspx?sourcedoc=%7B5BFB7555-A92C-41D4-88BA-98EB43A0D58E%7D&file=TSGCreatorTemplate.xlsx&action=default&mobileredirect=true)


You can reach **JR Mayberry (rimayber)** from APAC or **Chad Mathiason (chadmat)** from North America if you need help.









