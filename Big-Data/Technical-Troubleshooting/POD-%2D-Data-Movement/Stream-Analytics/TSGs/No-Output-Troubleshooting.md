# General Troubleshooting 
_Details to come_
 
1. Check Azure Support Center
Review insights, if insights are not helpful provide feedback then proceed to step 2

2. Check the Logs using ASA Wizard
You'll need the resource ID, region, and investigation timeframe.

3. Ensure there is input, if there is no input there will be no output. If there is no input and the customer is unsure why please see No Input Troubleshooting

4. 

# By Input Adapter 

After completing the general troubleshooting if you're still unable to see input please review the input adapter specific troubleshooting options below: 

 
## Data Lake Storage Gen 1
- Ensure the customer has recently renewed authorization.
- Check the output path pattern: Ensure that the folders preceding the date/time parameters exist in the Data Lake.

##Azure SQL Database
- Ensure that the customer can connect to the SQL Database.
- Ensure that the SQL Database DTU Quota has not been reached.
- Check logs for connection, Data Conversion, Column does not exist, Duplicate Primary Key, and other errors.
_More Details to come_

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
