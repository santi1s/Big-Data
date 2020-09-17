<p style='margin-top:18pt;margin-bottom:7pt;line-height:29pt;font-family:&amp;quot;
font-size:24.0pt;color:#1C3A56'>Notification Insight</p>

#<span style="color:blue">**Summary**</span>

You can create a notification insight for **hot/temporary issues** within ASC in a matter of a few minutes without spinning up dev cycles. They are typically meant for issues that don’t persist for long periods. Once the Notification insight is created, it **immediately** shows up in ASC for targeted cases during case creation or when using “Edit & Run” in a matter of a few minutes. 

In this wiki you will find:
1. [Create an ASC Insight through Notification Insight](#create-an-asc-insight-through-notification-insight)
2. [Pros and cons compared to Elixir](#pros-and-cons-compared-to-elixir)
3. [How to deploy in Production](#deploy-in-production)
5. [Reference to Notification Insight official documentation](#references) 

#Create an ASC Insight through Notification Insight

Creating an ASC using Notification Insight is very simple, this approach is intended to be used for temporary issues and create ASC Insights in a matter minutes. In order to create a Notification Insight, you need to leverage Jarvis Actions. Below are instructions to help guide you through a simple creation scenario.

## A) Pre-requisites:
Get permissions for using ADS Jarvis actions by joining [**MyAccess Group 19401 - Azure Diagnostic Partners**](https://myaccess/identityiq/home.jsf).

## B) Step 1 - Jarvis:
1. In [**Jarvis**](https://jarvis-west.dc.ad.msft.net/actions) select **Test** environmen. You don't need a SAW machine to deploy.  
1. Click on **Notification Operations** (found under "AzureDiagnosticService", you can filter by in the Filter field).
1. As an example, select the following Input Fields (see image below). Almost all fields are mandatory, except Article Id and Links. 

**IMPORTANT:** Notification Insight must always have an **expiration date**, because it is temporary in nature.

![Jarvis image](/.attachments/image-b3ff7efe-9aeb-4461-90fb-46920f736dc8.png)

## C) Step 2 - ASC:
1. Use the [**ASC test environment**](https://azuresupportcentertest.azurewebsites.net/caseoverview) to confirm the Insight has been deployed successfully 
1. This is how it looks like in ASC. Please note that I am using the [_cosmosdb-lazyindexing-rca_](https://github.com/Azure/SelfHelpContent/blob/master/articles/microsoft.cosmosdb/cosmosdb-lazyindexing-rca.md) as Customer Ready content as an example.

![ASC test environment image](/.attachments/image-552d4e28-0f72-4214-9c7c-606dbb0c10f3.png)


#Pros and cons compared to Elixir
- The **main advantages** of using **Notification Insight** compared to **Creating an insight using Elixir** are:
  - Creating a notification insight for temporary issues within ASC in a matter minutes, it takes less than 10/15 minutes to have an Insight created in ASC Test environment.
  - Really easy to leverage Customer Ready Content, we just need to indicate the Article Id.
  - Can be used has the standard to quickly inform CSS of any major outage, issue or bug that typically will not persist for long periods.
  - Once the Notification insight is created, it immediately shows up in ASC.
  - Quick and easy do delete a Notification Insight, if necessary.

- The **main advantages** of using **Elixir** compared to **Creating an insight using Notification Insight**:
  - Unlike Notification Insight, Elixir does not need an expiration date (the Expiration Date is a mandatory parameter in Notification Insight).
  - Notification Insight will appear every time for the Support Topic selected, however, Elixir gives you the chance to write your own Kusto Query making it more accurate for CSS and tailor-made experience to use in Azure Portal SelfHelp Insights and Diagostics. 
  - Elixir has ASC and Azure Portal as Target clients.
  - Elixir gives you the chance to classify the query data. 

#Deploy in Production
- To deploy in **Production** you just need to set the _Diagnostic service ring_ to **Production**.
![Deploy Notificaiton Insight in Production.png](/.attachments/image-7136eb1f-68d6-4390-bcb1-cdf1009b0598.png)

#References
- For more details about Notification Insights please visit the official Notification Insight documentation:
https://azuresupportcenterdocs.azurewebsites.net/developers/insights/DevelopingInsights/Notification_Insights.html.
	
- For details on how to author a quality insight in Azure Support Center visit: https://azuresupportcenterdocs.azurewebsites.net/developers/BuildingEffectiveInsights.html.

- Notification Insight Presentation:
https://msit.microsoftstream.com/video/0725a1ff-0400-96f3-6261-f1eaf8d034f7.