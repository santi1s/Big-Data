# Getting Started


# **Technology Introduction**

Azure Stream Analytics (ASA) is a PaaS Service in Microsoft Azure, available from the Azure Portal https://portal.azure.com
![Azure Stream Analytics Logo](https://docs.microsoft.com/en-us/azure/stream-analytics/media/stream-analytics-introduction/stream-analytics-intro-pipeline.png).

ASA provides low latency, highly resilient and scalable complex event processing. It's easy for a non-developer to create job easily and provide business insight quickly, specify transformations and monitor the scale/speed of their overall streaming pipeline. The service can easily scale from a few kilobytes to a gigabyte or more of events processed per second.

Laymen's Analogy - think of how you would count all the red cars in a parking lot with a SQL query or MapReduce word count. Now consider the equivalent streaming scenario - how would you count all the red cars passing a particular sign on the highway within a 1 minute timeframe.

Writing a Stream Analytics job is as simple as pointing to a source input, writing a SQL like query to process the events, and pointing to a destination / output. Underneath Stream Analytics uses a custom YARN application that is deployed in a set of multi-tentant HDInsight clusters to ingest data, and provide output. The HDInsight clusters points to two storage accounts - one for the cluster management and default logs, and a second shared storage account which holds the common job store. The jobs are resilient and will automatically retry should HDInsight experience an interruption. You can Start and Stop the jobs from the portal or PowerShell cmdlets.

[Azure Stream Analytics Intro News Story](https://microsoft.sharepoint.com/teams/bidpwiki/Pages1/Azure%20Stream%20Analytics%20Intro%20News%20Story.aspx)

#Public Documentation
You can find more information about Azure Stream Analytics from the [Documentation](https://docs.microsoft.com/en-us/azure/stream-analytics/)

#Collaboration Group to Join
[Big Data Stream Analytics teams channel](https://teams.microsoft.com/l/channel/19%3aed61c2064c6941d2988493b7cdce55d7%40thread.skype/z%2520-%2520Stream%2520Analytics?groupId=d6c5d9c8-f14e-4cb6-a79a-1874c3b84cb6&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47)
Team Code: 1zdqpfa

[ASA CSS PG collab teams channel](https://teams.microsoft.com/l/team/19%3aaa42f7f4a4bd4daf88581ddc76faf624%40thread.skype/conversations?groupId=f4ae42e4-0a6c-44b7-8865-20266713a849&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47)


[ASA Engineers Outlook Group](https://outlook-sdf.office.com/owa/ASAEngineers@service.microsoft.com/groupsubscription.ashx?action=join&source=Outlook&guid=e58c0254-744d-404e-87c7-5cdc7aba458a)



#Meetings to attend:
Daily ASA FDR triage
Weekly Education series
Daily ASA PG Triage

#[MyAccess](https://myaccess/identityiq/home.jsf):
In order to access the correct Jarvis logs, and Azure Support Center, request access to the following projects:
![myAccess.png](/.attachments/myAccess-b87156c8-689c-4fef-99e9-5d4fa98fc70e.png)

- WA CTS -14817
- AzureSupportCenter SupportEngineer Access - 18897
- WAUtil Read-Only Access - 12611
         
Collaboration & Escalation: Swarming https://learn.microsoft.com/activity/S4295219/launch#/

#Azure Bootcamp
If you're new to Azure start here! Mirosoft has prepared several trainings known as "bootcamps" to help engineers understand how to use Azure:

[Bootcamp Slides](http://aka.ms/bootcamp/slides)
[Bootcamp Lab Activity Files](http://aka.ms/bootcamp/labcode)
[Bootcamp Lab Activites](http://aka.ms/bootcamp/labmanual)
[Post Bootcampt resources (setting up repros)](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fmicrosoft.sharepoint.com%2Fteams%2FWAG%2FBootcamp%2FHOLLatestPresentations%2FForms%2FAllItems.aspx%3Fviewpath%3D%252Fteams%252FWAG%252FBootcamp%252FHOLLatestPresentations%252FForms%252FAllItems%252Easpx%26id%3D%252Fteams%252FWAG%252FBootcamp%252FHOLLatestPresentations%252FAfter%2520Boot%2520Camp&data=02%7C01%7CTiffany.Fischer%40microsoft.com%7Cbae3f8762bc6446c5f0908d76a01ec81%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637094428800157602&sdata=Bi2Y4IPXt3m5HqsgiTTDR8uAb7Xjyrfgc%2BfvPb3kRuk%3D&reserved=0) 

#ASA Learning Courses
We've identified several internal and external learning resources to help you understand how to set up and managed Azure Stream Analytics cloud jobs. We've broken them up into levels, L1 for novice up to L4 for advanced:
We recently presented an overview readiness session about ASA and the basics to troubleshoot cases using ASC.

We recorded the session and uploaded it to Big Data WW channel here: 
[L1 - Internal SE Learning - Intro to Azure Streaming Analytics and TS](https://microsoft.sharepoint.com/:v:/t/BigDataAnalyticsPOD/ERhPMiCNRp1EkdW8TObvYToB7EOnNCsT8BDmiSMwRHDxLg?e=bjM46x)
[L1 - MS Learning - Implement a Data Streaming Solution with Azure Streaming Analytics](https://docs.microsoft.com/en-us/learn/paths/implement-data-streaming-with-asa/)
[L2 - Microsoft Edx Course - Processing Real-Time Data Streams in Azure](https://courses.edx.org/courses/course-v1:Microsoft+DAT223.2x+3T2019/course/)
[L3 - O’reilly Video Course – Azure Master Class Analyze](https://learning.oreilly.com/videos/azure-masterclass-analyze/9781789340327/9781789340327-video2_1)
[L4 - Internal Technical Training Videos – ASA Ready: ReBooted](https://msit.microsoftstream.com/channel/eaf05cc2-4f4c-44be-91e2-8f1932268baa)

#Other Learning Resources
Microsoft gives its engineers access to a wide variety of learning resources if you want to extend your learnings. Some of the services offered are:

[Microsoft Learn](https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Fmicrosoft.com%2Flearn&data=02%7C01%7CTiffany.Fischer%40microsoft.com%7Cbae3f8762bc6446c5f0908d76a01ec81%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637094428800167596&sdata=fYaj%2FKvixqfbxQlOrMnqkRaWp%2F0ZEKhEAWckksxSwSk%3D&reserved=0)
[LinkedIn Learning](https://nam06.safelinks.protection.outlook.com/?url=http%3A%2F%2Flynda.com%2F&data=02%7C01%7CTiffany.Fischer%40microsoft.com%7Cbae3f8762bc6446c5f0908d76a01ec81%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637094428800177591&sdata=X5s37X3MuRSR15y0kcecaOS3FbcKwkKJfvquza58NgM%3D&reserved=0)
[Pluralsight](https://aka.ms/pluralsight)
[O’Reilly Online Learning](http://aka.ms/safari)
[ASA Overview & Troubleshooting Readiness Session](/Data-Movement-POD/Stream-Analytics/ASA-%2D-Azure-Stream-Analytics-%2DTraining) *new*

#Troubleshooting Introduction:

~~[Azure Stream Analytics 101 learning course](https://learn.microsoft.com/activity/S1604001/launch#/)
Do up to "MSSolve Tracking your case and logging your time. MSSolve has been deprecated, we now use Service Desk to manage cases, and AxisNow to track labor.~~

>*The above training course was retired by the learn team for low consumption. We are working with the PG to determine if another course should be created. In the meantime please review the other content on this page.*


Review [Basic Troubleshooting](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?pagePath=%2FData%20Movement%20POD%2FStream%20Analytics%2FTSGs%2FBasic%20Troubleshooting&pageId=181135&wikiVersion=GBwikiMaster) TSG


[Casework Basics Video](https://msit.microsoftstream.com/video/72e5a0f5-8dd9-471d-b346-8403a9eeef7c?channelId=eaf05cc2-4f4c-44be-91e2-8f1932268baa)

[Case Handling Best Practices](/Big-Data/Case-Management)

[Metrics Troubleshooting](https://msit.microsoftstream.com/video/a0710e60-8277-4d3b-b420-2a8fc2650e0b?channelId=eaf05cc2-4f4c-44be-91e2-8f1932268baa)

Activity & Diagnostic Logs
https://msit.microsoftstream.com/video/08952be8-337d-4bd0-bdac-183e29df87bd?channelId=eaf05cc2-4f4c-44be-91e2-8f1932268baa

Other TSGs can be found on the BigData wiki
https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?pagePath=%2FData%20Movement%20POD%2FStream%20Analytics&pageId=143905&wikiVersion=GBwikiMaster

#Tools:
Service Desk Training
https://microsoft.sharepoint.com/teams/EAST/SitePages/Service-Desk.aspx

ASA Wizard Instructional Video
https://msit.microsoftstream.com/video/07529395-254d-4442-a897-732e6416f6ca?channelId=eaf05cc2-4f4c-44be-91e2-8f1932268baa

ASA Wizard Reference Guide:
https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?pagePath=%2FData%20Movement%20POD%2FStream%20Analytics%2FTSGs%2FASA%20Wizard%20Reference%20Guide&pageId=190211&wikiVersion=GBwikiMaster
Axis Now Training
https://sharepoint.partners.extranet.microsoft.com/sites/pfetools/Training%20Library/AxisNow/Training%20-%20Using%20AxisNow.docx

#Videos to Watch:

SLA, FDR, CSAT
https://msit.microsoftstream.com/video/3c1688d0-93bf-4cfd-bd53-2b137df9767f?channelId=eaf05cc2-4f4c-44be-91e2-8f1932268baa

Engineer Success Series:
https://msit.microsoftstream.com/channel/283a6521-5684-4415-ae36-29d694264e5f

#Transfer Procedure
Sender
- Making Great Decisions!
- Documentation // Title, SAP, Notes Summary
- Add Entry to SP List à Big Data Analytics POD TEAM | Case Transfer channel | Transfer tab
- Transfer Case to Queue via Service Desk

Receiver
- Review & Provide Feedback (positive or constructive)
Follow Up
- POD Leads Review & Share Trends and Progr