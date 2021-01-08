This article describes common issues with Azure Stream Analytics input connections, how to troubleshoot input issues, and how to correct the issues. Many troubleshooting steps require resource logs to be enabled for your Stream Analytics job. If you do not have resource logs enabled, see Troubleshoot Azure Stream Analytics by using resource logs.

# General Troubleshooting 

When testing using the ASA Query Portal a user might see an error:
"No data was found for preview from '[inputname]'. Make sure the input has recently received data and the correct format of those events has been selected."  Example below is seen for an EventHub input.
![no-data-error.PNG](/.attachments/no-data-error-605af6d9-2422-4af6-a055-d5b005f0674a.PNG)

1) Verify from the input resource in the Azure Portal that the input has metrics coming in during the time the Azure Stream Analytics was tested in the Query Portal.
2) Verify that the input serialization format matched the selected format in the input configuration and the ASA Query Test portal.
3) Validate the input as properly formatted and there are no serialization errors.  

#Troubleshoot input connections

#Input events not received by job
Test your input and output connectivity. Verify connectivity to inputs and outputs by using the Test Connection button for each input and output.

**Examine your input data.**

Use the Sample Data button for each input. Download the input sample data.

Inspect the sample data to understand the schema and data types.

Check Event Hub metrics to ensure events are being sent. Message metrics should be greater than zero if Event Hubs is receiving messages.

Ensure that you have selected a time range in the input preview. Choose Select time range, and then enter a sample duration before testing your query.

#Malformed input events causes deserialization errors
Deserialization issues are caused when the input stream of your Stream Analytics job contains malformed messages. For example, a malformed message could be caused by a missing parenthesis, or brace, in a JSON object or an incorrect timestamp format in the time field.

When a Stream Analytics job receives a malformed message from an input, it drops the message and notifies you with a warning. A warning symbol is shown on the Inputs tile of your Stream Analytics job. The following warning symbol exists as long as the job is in running state:

**Azure Stream Analytics inputs tile**

Enable resource logs to view the details of the error and the message (payload) that caused the error. There are multiple reasons why deserialization errors can occur. For more information regarding specific deserialization errors, see [Input data errors](https://docs.microsoft.com/en-us/azure/stream-analytics/data-errors#input-data-errors). If resource logs are not enabled, a brief notification will be available in the Azure portal.

**Input details warning notification**

In cases where the message payload is greater than 32 KB or is in binary format, run the CheckMalformedEvents.cs code available in the [GitHub samples repository](https://github.com/Azure/azure-stream-analytics/tree/master/Samples/CheckMalformedEventsEH). This code reads the partition ID, offset, and prints the data that's located in that offset.

#Job exceeds maximum Event Hub receivers
A best practice for using Event Hubs is to use multiple consumer groups for job scalability. The number of readers in the Stream Analytics job for a specific input affects the number of readers in a single consumer group. The precise number of receivers is based on internal implementation details for the scale-out topology logic and is not exposed externally. The number of readers can change when a job is started or during job upgrades.

The following error messages are shown when the number of receivers exceeds the maximum. The error message includes a list of existing connections made to Event Hub under a consumer group. The tag AzureStreamAnalytics indicates that the connections are from Azure Streaming Service.

The streaming job failed: Stream Analytics job has validation errors: Job will exceed the maximum amount of Event Hub Receivers.

The following information may be helpful in identifying the connected receivers: Exceeded the maximum number of allowed receivers per partition in a consumer group which is 5. List of connected receivers – 
AzureStreamAnalytics__1, 
AzureStreamAnalytics__1, 
AzureStreamAnalytics__1, 
AzureStreamAnalytics__1, 
AzureStreamAnalytics__1.

 Note

When the number of readers changes during a job upgrade, transient warnings are written to audit logs. Stream Analytics jobs automatically recover from these transient issues.

#Add a consumer group in Event Hubs
To add a new consumer group in your Event Hubs instance, follow these steps:

- Sign in to the Azure portal.

- Locate your Event Hub.

- Select Event Hubs under the Entities heading.

- Select the Event Hub by name.

- On the Event Hubs Instance page, under the Entities heading, select Consumer groups. A consumer group with name $Default is listed.

- Select + Consumer Group to add a new consumer group.

- Add a consumer group in Event Hubs

- When you created the input in the Stream Analytics job to point to the Event Hub, you specified the consumer group there. $Default is used when none is specified. Once you create a new consumer group, edit the Event Hub input in the Stream Analytics job and specify the name of the new consumer group.

#Readers per partition exceeds Event Hubs limit
If your streaming query syntax references the same input Event Hub resource multiple times, the job engine can use multiple readers per query from that same consumer group. When there are too many references to the same consumer group, the job can exceed the limit of five and thrown an error. In those circumstances, you can further divide by using multiple inputs across multiple consumer groups using the solution described in the following section.

Scenarios in which the number of readers per partition exceeds the Event Hubs limit of five include the following:

- Multiple SELECT statements: If you use multiple SELECT statements that refer to same event hub input, each SELECT statement causes a new receiver to be created.

- UNION: When you use a UNION, it's possible to have multiple inputs that refer to the same event hub and consumer group.

- SELF JOIN: When you use a SELF JOIN operation, it's possible to refer to the same event hub multiple times.

The following best practices can help mitigate scenarios in which the number of readers per partition exceeds the Event Hubs limit of five.

#Split your query into multiple steps by using a WITH clause
The WITH clause specifies a temporary named result set that can be referenced by a FROM clause in the query. You define the WITH clause in the execution scope of a single SELECT statement.

For example, instead of this query:

SQL

Copy
SELECT foo 
INTO output1
FROM inputEventHub

SELECT bar
INTO output2
FROM inputEventHub 
…
Use this query:

SQL

Copy
WITH data AS (
   SELECT * FROM inputEventHub
)

SELECT foo
INTO output1
FROM data

SELECT bar
INTO output2
FROM data
…
#Ensure that inputs bind to different consumer groups
For queries in which three or more inputs are connected to the same Event Hubs consumer group, create separate consumer groups. This requires the creation of additional Stream Analytics inputs.

#Create separate inputs with different consumer groups
You can create separate inputs with different consumer groups for the same Event Hub. The following UNION query is an example where InputOne and InputTwo refer to the same Event Hub source. Any query can have separate inputs with different consumer groups. The UNION query is only one example.

SQL

Copy
WITH 
DataOne AS 
(
SELECT * FROM InputOne 
),

DataTwo AS 
(
SELECT * FROM InputTwo 
),

SELECT foo FROM DataOne
UNION 
SELECT foo FROM DataTwo

#Readers per partition exceeds IoT Hub limit
Stream Analytics jobs use IoT Hub's built-in Event Hub compatible endpoint to connect and read events from IoT Hub. If your read per partition exceeds the limits of IoT Hub, you can use the solutions for Event Hub to resolve it. You can create a consumer group for the built-in endpoint through IoT Hub portal endpoint session or through the IoT Hub SDK.

# By Input Adapter 

After completing the general troubleshooting if you're still unable to see input please review the input adapter specific troubleshooting options below: 

 

## Event Hub 

- Incorrect Shared Access Policy Configuration
- Device not sending data to EventHub - Check the EventHub Monitoring Graphs from the customer
- [Malformed input](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&_a=edit&pagePath=%2FBig%20Data%2FTechnical%20Troubleshooting%2FProduct%20Specific%20Troubleshooting%2FPOD%20%252D%20Data%20Movement%2FStream%20Analytics%2FTSGs%20%252D%20Azure%20Stream%20Analytics%20(ASA)%2FNo%20Input%20Troubleshooting&pageId=143968&anchor=malformed-input-events-causes-deserialization-errors) 
- Throttling ingress. Calculate throughput. Ex Max Values bytes ÷ (1024 x 1024 x 60) = XX MB/sec
The event hub configured with 20TU allows for 20MB/sec on message ingress.  If over this amount, the customer can increase the EventHub TU.

## IoT Hub 

Customer is using Custom Endpoint with Routes 

Check if the customer has enabled a Custom Endpoint with Routes in the Message Routing section of the Azure Portal: 

![GetImageAttachment.png](/.attachments/GetImageAttachment-c311a655-7579-4a79-a7a0-f10c6d635ad7.png)

If the customer has a route created this means that they are using a query to determine what messages should be sent to a particular custom endpoint. When these routes are active the messages routed to the custom endpoint WILL NOT be sent to the built in endpoints (where ASA consumes from). If fallback route is enabled (default) any data that is not specified in the query will be routed to the default endpoint. If fallback is not enabled, no data will flow to the default endpoint. 

 

From the docs: 

"Once a route is created, data stops flowing to the built-in-endpoint, unless a route is created to that endpoint. If there are no routes to the built-in-endpoint and a fallback route is enabled, only messages that don't match any query conditions on routes will be sent to the built-in-endpoint. Also, if all existing routes are deleted, fallback route must be enabled to receive all data at the built-in-endpoint." https://docs.microsoft.com/en-us/azure/iot-hub/iot-hub-devguide-messages-d2c#fallback-route 

OTHER TSG:

- Please check if the telemetry is actually arriving at the IoT Hub

- Check if the telemetry provided us in the correct JSON format.  Check JARVIS or Diagnostic Logs for Deserialization errors or Configuration errors.

- Navigate to the ASA Input IoTHub Configuration and test the connection.  If no connection, then check the following:

     - Check if the IoTHub routing is passing all data to the default endpoint (eg. no disabled fallback endpoint)

     - Give the IoTHub an extra consumer group to prevent other resources from 'hijacking' messages (under IoTHub | Settings | Built-in endpoints)

     - Check the Stream Analytics input (is it connected to the right IoT Hub with the right consumer group) and after submitting, check the automatic connectivity test.

- If this does not work, please first output to an Event hub and connect that Event hub as an input for your Stream Analytics Job. You get more insights from that event hub.

## CI/CD
ERROR
Unable to find assembly 'Microsoft.EventProcessing.SteamR.Sql, Version=1.2.0.0, Culture=neutral, PublicKeyToken=xxxxxxxxxxx

CAUSE
I think the error on the Assembly looks like it might come from the Dev Ops Ci/CD side. The customer (that I was helping another SE with) was due to a deployment using CI/CD where either the ASA job needed to be stopped, or due to a bug in the Query file that they were trying to deploy.   

1) Use diagnostic logging when troubleshooting

2) Test Query in the test portal first

3) Are they using The CI/CD NuGet or the latest npm, see the [Continuous integration and deployment overview](https://docs.microsoft.com/en-us/azure/stream-analytics/cicd-overview)?

4) Although I have troubleshoot the CI/CD previously, I would possibly create a collab with the Dev Ops Teams to find more information about failed deployments.