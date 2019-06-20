# Getting Started
Azure Stream Analytics (ASA) is a PaaS Service in Microsoft Azure, available from the Azure Portal https://portal.azure.com
![Azure Stream Analytics Logo](https://docs.microsoft.com/en-us/azure/stream-analytics/media/stream-analytics-introduction/stream-analytics-intro-pipeline.png)

# **Technology Introduction**

Microsoft Azure Stream Analytics is a fully managed real-time stream computation service host in Microsoft Azure. It provides low latency, highly resilient and scalable complex event processing. It's easy for a non-developer to create job easily and provide business insight quickly, specify transformations and monitor the scale/speed of their overall streaming pipeline. The service can easily scale from a few kilobytes to a gigabyte or more of events processed per second.

Laymen's Analogy - think of how you would count all the red cars in a parking lot with a SQL query or MapReduce word count. Now consider the equivalent streaming scenario - how would you count all the red cars passing a particular sign on the highway within a 1 minute timeframe.

Writing a Stream Analytics job is as simple as pointing to a source input, writing a SQL like query to process the events, and pointing to a destination / output. Underneath Stream Analytics uses a custom YARN application that is deployed in a set of multi-tentant HDInsight clusters to ingest data, and provide output. The HDInsight clusters points to two storage accounts - one for the cluster management and default logs, and a second shared storage account which holds the common job store. The jobs are resilient and will automatically retry should HDInsight experience an interruption. You can Start and Stop the jobs from the portal or PowerShell cmdlets.

[Azure Stream Analytics Intro News Story](https://microsoft.sharepoint.com/teams/bidpwiki/Pages1/Azure%20Stream%20Analytics%20Intro%20News%20Story.aspx)