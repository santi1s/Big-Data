[[_TOC_]]


# Jarvis for Data Share
Endpoint - Diagnostics Prod
Namespace - AzureDataShare
Events to Search - DataShareLogEvent

![image.png](/.attachments/image-083b4832-5141-4307-b14e-c9b4f906c47b.png)

Scoping Conditions
Region - By region of Share

Filtering Conditions
Subscription ID
ResourceId contains <Data Share Name>

![image.png](/.attachments/image-d036e3d4-5fb5-426b-b750-1eed1410388b.png)


##Columns
Check tracinglevel, stackTrace, exception, message, env_time


#Kusto for Data Share
Kusto Endpoint: https://azuredatashare.kusto.windows.net