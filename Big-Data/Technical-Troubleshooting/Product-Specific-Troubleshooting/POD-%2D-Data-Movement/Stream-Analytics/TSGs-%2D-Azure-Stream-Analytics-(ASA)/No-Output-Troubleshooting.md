# General Troubleshooting 
_Details to come_
 
1. Check Azure Support Center
Review insights, if insights are not helpful provide feedback then proceed to step 2

2. Check the Logs using ASA Wizard
You'll need the resource ID, region, and investigation timeframe.

3. If you find errors, review the [documentation for the cause](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/326779/Common-Error-Codes)

4. Ensure there is input, if there is no input there will be no output. If there is no input and the customer is unsure why please see No Input Troubleshooting

5. [Online Documentation to General Troubleshooting No Output](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output)
   - [Output not Produced by Job](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output#output-not-produced-by-job)
   - Output is delayed (https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-troubleshoot-output#job-output-is-delayed) 

6. Query is filtering contraints are too high such that it is filtering out all the data.

# By Input Adapter 

After completing the general troubleshooting if you're still unable to see input please review the input adapter specific troubleshooting options below: 

 
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
- Make sure that the Power Bi has not reached any limit.
_More Details to come_

##Table Storage
_Details to come_

##Service Bus queues
_Details to come_

##Service Bus Topics
_Details to come_

##Azure CosmosDB
_Details to come_

##Azure Functions
1. [Intro to Function Apps in ASA - Using Function App in Stream Analytics Job](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-with-azure-functions)
2. [Known Product Issues](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-with-azure-functions#known-issues)
3.  Gather Preliminary Information
    - Function app resource name (ask customer; not available in logs)
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

_More Details to come_