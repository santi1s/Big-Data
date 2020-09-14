<p style='margin-top:18pt;margin-bottom:7pt;line-height:29pt;font-family:&amp;quot;
font-size:24.0pt;color:#1C3A56'>Notification Insight</p>

## Summary
Azure Partner teams and SMEs can create a notification insight for **hot/temporary issues** within ASC in a matter of a few minutes without spinning up dev cycles. They are typically meant for issues that don’t persist for long periods. Once the Notification insight is created, it **immediately** shows up in ASC for targeted cases during case creation or when using “Edit & Run” in a matter of a few minutes. 

**IMPORTANT:** Notification Insight must always have an **expiration date**, because it is temporary in nature.

## Create an ASC Insight through Notification Insight

Creating an ASC using Notification Insight is very simple, this approach is intended to be used for temporary issues and create ASC Insights in a matter minutes. In order to create a Notification Insight, you need to leverage Jarvis Actions. Below are instructions to help guide you through a simple creation scenario.

### A) Pre-requisites:
Get permissions for using ADS Jarvis actions by joining **MyAccess Group 19401 - Azure Diagnostic Partners**.

### B) Step 1 - Jarvis:
1. In [**Jarvis**](https://jarvis-west.dc.ad.msft.net/actions) select **Test** environment.
1. Click on **Notification Operations** (found under "AzureDiagnosticService", you can filter by in the Filter field).
1. As an example, select the following Input Fields (see image below). Almost all fields are mandatory, except Article Id and Links. 

![image.png](/.attachments/image-b3ff7efe-9aeb-4461-90fb-46920f736dc8.png)

### C) Step 2 - Jarvis:
1. Use the [**ASC test environment**](https://azuresupportcentertest.azurewebsites.net/caseoverview) to confirm the Insight has been deployed successfully 
1. This is how it looks like in ASC. Please note that I am using the cosmosdb-lazyindexing-rca as Customer Ready content as an example.