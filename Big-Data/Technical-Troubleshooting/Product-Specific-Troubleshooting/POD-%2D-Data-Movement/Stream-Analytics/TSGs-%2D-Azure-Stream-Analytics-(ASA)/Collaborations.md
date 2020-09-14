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

#Table Store