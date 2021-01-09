**Error Example**
'Stream Analytics job has validation errors: Unable to find assembly 'Microsoft.EventProcessing.SteamR.Sql, Version=1.2.0.0, Culture=neutral, PublicKeyToken=xxxxxxxxxxx'.

I think the error on the Assembly looks like it might come from the Dev Ops Ci/CD side. The customer (that I was helping another SE with) was due to a deployment using CI/CD where either the ASA job needed to be stopped, or due to a bug in the Query file that they were trying to deploy. 

**TSG Suggestions**

1) Use diagnostic logging when troubleshooting (diagnostic logs may have additional details)

2) Test Query in the test portal before deployment

3) Are they using The CI/CD NuGet or the latest npm, see the Continuous integration and deployment overview?

4) Although I have troubleshoot the CI/CD previously, I would recommend to create a collab with the Dev Ops Teams to find more information about failed deployments.

Continuous integration and deployment for Azure Stream AnalyticsThis article gives an overview of a continuous integration and deployment (CI/CD) pipeline for Azure Stream https://docs.microsoft.com/en-us/azure/stream-analytics/cicd-overview