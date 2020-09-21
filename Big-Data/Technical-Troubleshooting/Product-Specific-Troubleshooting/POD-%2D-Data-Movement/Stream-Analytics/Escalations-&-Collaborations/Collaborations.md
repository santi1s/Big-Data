# General Troubleshooting when you receive a ticket from a collaboration
Get Preliminary information

#ASA

**What is the ASA Resource Uri?** 
The Resource URI is the fully qualified ID of the resource, including the resource name and resource type. Use the format: 
/subscriptions/{guid}/resourceGroups/{resource-group-name}/{resource-provider-namespace}/{resource-type}/{resource-name}. 

   In a collaboration the Identify Resource URI will not be in the ASC info.  Guessing using the Resource Explorer is not recommended. 

   Ask the Support Engineer if this information has been provided already, but chances are, it has not. 
 
**REQUEST INFORMATION FOR THE ASA JOB**
- What is the Resource Uri?
   - Subscription Id
   - Resource Group
   - Resource Name
   - This information will be provided in the URL from the ASA job Overview page.
- What is the region of the ASA?
- What is the most recent time this issue has occurred?
- What are the steps to reproduce this issue?
- Errors or Warnings found
- Please provide the ASA Query
- If the input or output is the issue, also include a screenshot of the ASA Input configuration & output configuration

#EventHub
- Provide EventHub Namespace, Name, Consumer Group, Access Policy
- What is the region of the EventHub?
- Errors or Warnings found
- What is the most recent time this issue has occurred?
- What are the steps to reproduce this issue?

#Blob
- Blob Name
- Container
- Path to the Blob
- Errors or Warnings found
- What is the most recent time this issue has occurred?
- What are the steps to reproduce this issue?

# Server Database (SQL, Synapse Analytics)
- Server Name
- Database Name
- User Name
- Errors or Warnings found
- What is the most recent time this issue has occurred?
- What are the steps to reproduce this issue?

#Function App
- App Service
- Function Name
- What is the most recent time this issue has occurred?
- What are the steps to reproduce this issue?

#Dev Ops
When opening a collaboration to Azure Dev Ops, be sure to include the following in your request:

1. Organization name (dev.azure.com/{org})
1. If it is a build or release error:
- Ask the customer to enabled system.debug = true and re-run their pipeline then share the logs.
- Include the pipeline names.

Opened a collaboration task to Azure Dev Ops and haven't gotten a response?
Email the DevOps duty manager: cssdevopsdm@microsoft.com

Have general questions about how to use Azure Dev Ops?
Not getting any repsonse from the DMs?
Reach out to the TAs: cssdevopsta@microsoft.com

MSAAS Queue Details:
https://msaas.support.microsoft.com/queue/bb7f20ed-8267-e711-8126-002dd815174c

#IoT Hub
Opened a collaboration task to IoT Hub and haven't gotten a response?

Email the IoT POD:
CSSPodDevSptDevIOT@microsoft.com

Not getting any response from the IoT Pod?
Reach out the correct regional SME for your customer:


|Region|Name             |Alias   |Email                  |
|------|-----------------|--------|-----------------------|
|ATZ   |Mark Radbourne   |markrad |markrad@microsoft.com  |
|ATZ   |Doug Iman        |dougiman|dougiman@microsoft.com |
|ATZ   |Anil Hashia      |anhashia|anhashia@microsoft.com |
|EMEA  |Dragos Baziotis  |drbaziot|drbaziot@microsoft.com |
|EMEA  |Andre Nascimento |andren  |andren@microsoft.com   |
|IST   |Shamik Misra     |shmisra |shmisra@microsoft.com  |
|IST   |Prabhat Tandon   |prabhatt|prabhatt@microsoft.com |
|APAC  |Stone Chen       |stochen |stochen@microsoft.com  |
|APAC  |Yunakai Fan      |yuf     |yuf@microsoft.com      |


#Table Store