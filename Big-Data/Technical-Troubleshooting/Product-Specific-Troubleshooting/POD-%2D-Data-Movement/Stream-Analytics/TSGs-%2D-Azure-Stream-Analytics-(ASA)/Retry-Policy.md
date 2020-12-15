**Transient or Data Errors causing retries** 

>Possible Questions:
Please tell me retry interval? 
There is no limit to the number of retries, right? 

Response
- It retries within few seconds, the actual timing is not something publicly documented and is subject to change. This isn't something that user has control over and ASA would take care of retrying transparently. 

- If both the outputs share an input, then both will be blocked after a while. And it will be resolved once the transient error goes away. If they don't share an input, there won't be any impact. 

- ASA does not store any data. It resumes reading from input once the output error is resolved. 

- Backlogged events is a result of transient errors or not enough streaming units, fixing these will increase processing rates and will reduce backlogged events. If the issue is not resolved and results in the continual accumulation of retry events, the ASA job may run out of resources.  

- Retry events for SQL may behave differently as documented [Working with transient errors - Azure SQL Database | Microsoft Docs](https://docs.microsoft.com/en-us/azure/azure-sql/database/troubleshoot-common-connectivity-issues) 

- A Drop policy can be used for preventing retries or the user can create an alert to be able to identify and resolve the source of the errors more quickly. 

- Retry Policy Docs [Output error policies in Azure Stream Analytics | Microsoft Docs](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-output-error-policy#retry) 

