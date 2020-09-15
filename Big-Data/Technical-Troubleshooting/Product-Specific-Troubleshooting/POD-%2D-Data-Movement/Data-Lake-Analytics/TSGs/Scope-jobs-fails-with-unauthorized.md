# Quick overview
Recently we have members from Microsoft Bing team running some **Scope** projects on ADF to ADLA and have been experiencing "no permission and or unauthorized permission". 


## Sample of error code
### Unauthorized error code

![image.png](/.attachments/image-ce390a8b-abd4-40a7-9c02-519625ac32ab.png)

### No Credential to perform action error code
![image.png](/.attachments/image-8c130b5b-755f-4672-bd4c-78a437b79b8f.png)
"errorCode": "2010", "message": "Default ADLA store retrieval failed. Need appropriate subscription id, resource group name and ADLA account name. Encountered the following error: The client 'bcc1b22d-aada-4441-865f-b6acc6031b9f' with object id 'bcc1b22d-aada-4441-865f-b6acc6031b9f' does not have authorization to perform action 'Microsoft.DataLakeAnalytics/accounts/read' over scope '/subscriptions/121ed073-2274-4c26-8287-896e4afef998/resourceGroups/conv/providers/Microsoft.DataLakeAnalytics/accounts/bingads-bi-oi-c08' or the scope is invalid. If access was recently granted, please refresh your credentials.", "failureType": "UserError", "target": "AdDataProcessing_SP", "details": []

## Resolution 
According to ADLA PG recommendation, the role **Data Lake Analytics Developer** needs to be added to the user/Service Principal directly on the ADLA access control IAM. 
This should help with the case. 
 

