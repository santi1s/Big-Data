
|TSG ID:| INP00001 |
|--|-
| Primary Contact: | Bambang Satrijotomo (basatrij)  |
| Component: | Any |
|  Last Modification Date| Jan 24, 2019  |
| ICM | - |


# Background:  

Customer is getting "LateInputEvent" error messages and wants to know the cause and how to mitigate it. 

![GetImageAttachment.jpg](/.attachments/GetImageAttachment-697f3218-04c7-4811-b125-e2bdbe7f4a30.jpg)![GetImageAttachment (1).jpg](/.attachments/GetImageAttachment%20(1)-050a4e6c-9e96-45c7-93ea-60883a13c848.jpg)

# Troubleshooting Guide  

## Reference:  
- ASA Document: https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-out-of-order-and-late-events 

- TSG Tool: https://aka.ms/asawizard

## Cause: 
Sometimes events don't make it from the client to the Event Hub/IOT Hub as quickly as they should, and when this happens, the error is generated.   

## Action:  
Verify if customer observation is valid. Use ASC insight or TSG tool to fetch log and information from Jarvis. 

Customer can adjust the maximum threshold for the late events 

![GetImageAttachment2.png](/.attachments/GetImageAttachment2-aea2b6f7-d1a0-441a-8764-bd84c5394c3d.png)

By adjusting the setting, customer needs to be aware that according to the document, lack of data in one of the sources or partitions can delay the output by an additional late arrival tolerance window. Hence it is recommended for customer to adjust the delay gradually while monitoring the impact on the output productivity.  

## Customer Impact:  
By default, the "Handling other events" is set to Adjust. Hence if this setting is active, there is no missing data for data that arrive later than the threshold. 