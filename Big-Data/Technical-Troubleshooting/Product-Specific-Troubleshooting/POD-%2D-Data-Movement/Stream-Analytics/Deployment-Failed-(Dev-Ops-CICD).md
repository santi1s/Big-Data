**Error Example**
'Stream Analytics job has validation errors: Unable to find assembly 'Microsoft.EventProcessing.SteamR.Sql, Version=1.2.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35'.

I think the error on the Assembly looks like it might come from the Dev Ops Ci/CD side. The customer (that I was helping another SE with) was due to a deployment using CI/CD where either the ASA job needed to be stopped, or due to a bug in the Query file that they were trying to deploy. 

**TSG Suggestions**

1) Use diagnostic logging when troubleshooting (diagnostic logs may have additional details)

2) Test Query in the test portal before deployment

3) Are they using The CI/CD NuGet or the latest npm, see the Continuous integration and deployment overview?

4) Although I have troubleshoot the CI/CD previously, I would recommend to create a collab with the Dev Ops Teams to find more information about failed deployments.

EditedContinuous integration and deployment for Azure Stream AnalyticsThis article gives an overview of a continuous integration and deployment (CI/CD) pipeline for Azure Stream Analytics.docs.microsoft.com<https://teams.microsoft.com/l/message/19:aa42f7f4a4bd4daf88581ddc76faf624@thread.skype/1603913167638?tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47&amp;groupId=f4ae42e4-0a6c-44b7-8865-20266713a849&amp;parentMessageId=1603314780328&amp;teamName=Stream Analytics Product Team - CSS Collaboration&amp;channelName=General&amp;createdTime=1603913167638>