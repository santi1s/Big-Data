# General Troubleshooting 

When testing using the ASA Query Portal a user might see an error:
"No data was found for preview from '[inputname]'. Make sure the input has recently received data and the correct format of those events has been selected."  Example below is seen for an EventHub input.
![no-data-error.PNG](/.attachments/no-data-error-605af6d9-2422-4af6-a055-d5b005f0674a.PNG)

1) Verify from the input resource in the Azure Portal that the input has metrics coming in during the time the Azure Stream Analytics was tested in the Query Portal.
2) Verify that the input serialization format matched the selected format in the input configuration and the ASA Query Test portal.
3) Validate the input as properly formatted and there are no serialization errors.  

_More details to come_

# By Input Adapter 

After completing the general troubleshooting if you're still unable to see input please review the input adapter specific troubleshooting options below: 

 

## Event Hub 


_Details to come_
 

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