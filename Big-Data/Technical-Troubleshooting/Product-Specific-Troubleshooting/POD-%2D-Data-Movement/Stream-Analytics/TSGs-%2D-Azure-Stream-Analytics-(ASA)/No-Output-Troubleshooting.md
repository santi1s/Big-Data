# General Troubleshooting 
_Details to come_
 
1. Check Azure Support Center
Review insights, if insights are not helpful provide feedback then proceed to step 2

2. Check the Logs using ASA Wizard
You'll need the resource ID, region, and investigation timeframe.

3. If you find errors, review the [documentation for the cause](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/326779/Common-Error-Codes)

4. Ensure there is input, if there is no input there will be no output. If there is no input and the customer is unsure why please see No Input Troubleshooting

5. Does the Test Query Portal produce output results?

6. [Online Documentation to General Troubleshooting No Output](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output)
   - [Output not Produced by Job](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output#output-not-produced-by-job)
   - [Output is delayed](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output#job-output-is-delayed) 

7. Also, the Query may have filtering constraints that are too high such that it is filtering out all the data.

# By Output Adapter 

After completing the general troubleshooting if you're still unable to see output please review the output adapter specific troubleshooting options below: 

 
## Data Lake Storage Gen 1
- Ensure the customer has recently renewed authorization.
- Check the output path pattern: Ensure that the folders preceding the date/time parameters exist in the Data Lake.

##Azure SQL Database
- Ensure that the customer can connect to the SQL Database.
- Ensure that the SQL Database DTU Quota has not been reached.
- Check logs for connection, Data Conversion, Column does not exist, Duplicate Primary Key, and other errors.
   - [Output Data Errors](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output#job-output-is-delayed)
   - [Key Violation Warning](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output#job-output-is-delayed)
   - [Column names are case sensitive](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output#job-output-is-delayed)
   - [Performance](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-sql-output-perf#avoiding-performance-pitfalls)

_More Details to come_
##Azure Synapse Analytics (formally knowns as Data Warehouse)
There are 2 output options for Azure Synapse Analytics
1) SQL Database
2) Azure Synapse Analytics

- If using SQL Database or Synapse when using a firewall, check the firewall settings to ensure that the user can login to the SQL database from the same IP that he is starting the ASA job.

- If not using a firewall, verify that the use can login to the Database using the login credentials that they are using to connect the ASA output. 
 
- If using Azure Synapse, then the customer needs to have a Storage Account configured in the settings (v1 or v2) and do not use a Firewall or Selected Networks.
 


##Blob Storage
_Details to come_

## Event Hub 
_Details to come_
 
##Power BI
_RESOURCES:_ 

Search ASC for Insight Errors 

ASA documentation  

https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-power-bi-dashboard#test-the-query 

Check Jarvis for Job Status Failures 

Check Latency from slow PowerBI 

 

_POSSIBLE ISSUES:_ 

1) PROBLEM: Currently, Power BI can be called roughly once per second. Streaming visuals support packets of 15 KB. Beyond that, streaming visuals fail (but push continues to work) 

   - TROUBLESHOOTING 
How many Rows are the customer trying to send to PowerBI?  Can ask the customer to share the dataset ID? So that we can get the metadata from Kusto. 


2) PROBELM: "The provided Power BI group was not found. Please ensure the 'groupId' property is correctly set on your output." 

   - TROUBLESHOOTING 
For this error, I solved mine by clicking on the job output and changing the authentication mode from `manage identity` to `User token`.  

3) PROBLEM: PowerBI reached limit.
- Large Numbe of Requests
 ![image.png](/.attachments/image-5a31762c-5b85-4330-afa4-bff786c46750.png)
  - TROUBLESHOOTING
Make sure that the Power Bi has not reached any limit.  If so, can the customer send aggregated events to the PowerBi?  More information available here: https://docs.microsoft.com/en-us/power-bi/admin/service-admin-manage-your-data-storage-in-power-bi

- Record exceeded size limit error
  - TROUBLESHOOTING
See an error specific to limits https://docs.microsoft.com/en-us/azure/stream-analytics/data-errors#outputdataconversionerrorrecordexceededsizelimit


_KNOWN ISSUES_ 

If Power BI has a dataset and table that have the same names as the ones that you specify in the Stream Analytics job, the existing ones are overwritten. We recommend that you do not explicitly create this dataset and table in your Power BI account. They are automatically created when you start your Stream Analytics job and the job starts pumping output into Power BI. If your job query doesn't return any results, the dataset and table are not created.  

https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-power-bi-dashboard#:~:text=Stream%20Analytics%20and%20Power%20BI%3A%20A%20real-time%20analytics,...%209%20Get%20help.%20...%2010%20Next%20steps 

 

##Table Storage
_Details to come_

##Service Bus queues
_Details to come_

##Service Bus Topics
_Details to come_

##Azure CosmosDB
**Azure Stream Analytics output to Azure Cosmos DB** 
When using CosmosDB as an output from ASA it is important to understand that only CosmosDB SQL API is compatible as an output connector.  More documentation regarding that limit is available here https://docs.microsoft.com/es-es/azure/cosmos-db/

The CosmosDb Cassandra feature is not yet available to use with ASA, but it is in the future plans.  Please consider providing feedback to the Product Group to request this feature here https://feedback.azure.com/forums/270577-stream-analytics/suggestions/11384418-add-cassandra-to-output

By default from cosmosdb service side we set maxitem retrieval count to 100 & 40 MB limit.  The customers can change maxitemcount to be retrieved to other value using function mentioned in link https://docs.microsoft.com/en-us/dotnet/api/microsoft.azure.documents.client.feedoptions.maxitemcount?view=azure-dotnet

https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-documentdb-output 

**TSG**
1. Review ASA Trace Event Jarvis logs for errors related to performance or configuration.
2. Review ASA Job Signals graph for latency on output.
3. Review CosmosDB ASC for Insights, Throttling and Latency.
4. Is the ASA job utilizing partitioning?
**Example Problem.** 
Cosmos DB Output contains multiple rows and just one row per partition key. If the output latency is higher than expected, consider choosing a partition key that contains at least several hundred records per partition key. For best performance, consider choosing the same partition key column for input and output. 

<div style="margin-left:30px; "><p>Why does the Cosmos db output contains just one row per partition key, the output latency is higher than expected?</p>

<p>It means CosmosDB writes are not happening in a batched manner (happening one record at a time), so ASA is achieving low write throughput hence the higher latency/watermark delay. If partition key is too unique (like a random guid for every event) this can happen , please choose something more reasonable -> <a href="https://docs.microsoft.com/en-us/azure/cosmos-db/partitioning-overview#choose-partitionkey" target="_blank">see this guidance</a>
</p></div>

<div style="margin-left:15px; "><p>5. What is the throughput for batch processing?</p>

<div style="margin-left:15px; "><p>The documentation says ASA 1.2 "With compatibility level 1.2, Stream Analytics supports native integration to bulk write into Azure Cosmos DB. This integration enables writing effectively to Azure Cosmos DB while maximizing throughput and efficiently handling throttling requests." </p>

<p>With 1.2 we use a CosmosDB API that uses batch processing internally.  ASA invokes the bulk executor for all events coming into PartitionID 0 (and 1 ... ) and internally it works like this.  https://docs.microsoft.com/en-us/azure/cosmos-db/bulk-executor-overview#how-does-the-bulk-executor-operate </p>

LIMITATIONS 
- ASA allows pushing maximum of 10MB worth of events in a batch. 
- CosmosDB limits for a request is 2MB  
https://docs.microsoft.com/en-us/azure/cosmos-db/concepts-limits#per-item-limits 
- BulkExecutor will typically split it into further mini batches and send 2 MB max at a time I am guessing. 
</div></div> 

6. If the RU Quota is maxed, then they need to scale up. [Here is an online support document related to CosmosDB Performance](https://docs.microsoft.com/en-us/azure/cosmos-db/set-throughput).
7. Create a collaboration with CosmosDB for technical assistance in resolving the issue. [Review Collaboration Notes for CosmosDB Here.](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/379265/Collaborations?anchor=cosmosdb) 

##Azure Functions
1. [Intro to Function Apps in ASA - Using Function App in Stream Analytics Job](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-with-azure-functions)
2. [Known Product Issues](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-with-azure-functions#known-issues)
3.  Gather Preliminary Information
    - ASA Output Function App Alias Name
    - Service App resource name
    - Function app name (ask customer; not available in logs)
    - Issue time frame (when events are output or errors occur)
4. Check that ASA can connect to Function App in the Output Configuration
5. Check that execution time has not exceeded app limit.  They may need to upgrade to a higher Tier for the Function App.
   - [Guide to Use AppLens to find long running apps](https://msdata.visualstudio.com/Azure%20Stream%20Analytics/_wiki/wikis/Azure%20Stream%20Analytics.wiki/4997/Troubleshootng-Azure-Functions-Output-related-issues)
6. Check that Functions do not have errors.
   - [Guide to Use AppLens to find function app errors](https://msdata.visualstudio.com/Azure%20Stream%20Analytics/_wiki/wikis/Azure%20Stream%20Analytics.wiki/4997/Troubleshootng-Azure-Functions-Output-related-issues)
   - [Error Handling Retries](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-with-azure-functions#error-handling-and-retries) 
7. Check for Function App Configuration limitations when reading in JSON as array
   - ASA Sends JSON as an array to the Function App
8. If Function App Code is creating a new connection every time it connects to a external resource, it will exhaust the connections.
9. Create a collaboration if the customer needs help optimizing or fixing errors in Function App
   - Get the App code from the customer to have available for the Function App SE
10.  Additional resources for Function App TSG - https://supportability.visualstudio.com/AzureFunctions/_wiki/wikis/AzureFunctions.wiki/236911/readme

**If Function App SNAT Port Exhaustion is found in App Lens**
This issue may occur when the code instantiates a connection client with each function invocation. This document https://4lowtherabbit.github.io/blogs/2019/10/SNAT/explains this situation in detail. 
•     [Manage Connections](https://docs.microsoft.com/en-us/azure/azure-functions/manage-connections)
•     [Improper Instantiation](https://docs.microsoft.com/en-us/azure/architecture/antipatterns/improper-instantiation/)
•     [Troubleshoot Intermittent Outbound Connection Errors](https://docs.microsoft.com/en-us/azure/app-service/troubleshoot-intermittent-outbound-connection-errors)
Resolution:
•	Do not create a new client with every function invocation.
•	Do create a single, static client that every function invocation can use.
•	Consider creating a single, static client in a shared helper class if different functions use the same service.


_More Details to come_
