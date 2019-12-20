# Gather
1. Open the Microsoft Integration Runtime Configuration Manager
2. Go to 'Diagnostics'
![image.png](/.attachments/image-4c46bc29-29c6-45e3-a782-b86bdb6645c3.png)
3. Reproduce the error (if possible), then click 'Send Logs'
4. Once the Logs have been sent, gather the Report ID and the Timestamp from the pop up
![image.png](/.attachments/image-0ecd17c2-808c-448c-9c54-959c8bb9b5e0.png)

# Evaluate 
1. Go to the Jarvis site https://jarvis-west.dc.ad.msft.net/
2. Set Namespace to HdisAgentMgmt and Table to TraceGatewayLocalEventLog

3. ​Then set the timeframe to the timestamp from when the logs were loaded

4. There are three options to search by:
a. The report ID that the user copy/pasted eg. UserReportId == "76cbbead-ed12-42c3-af02-f51c70d4e304"
b. The subscriptionId for that user eg. SubscriptionId=="3fd66c55-f695-41d4-a9bb-d9c926641998"
c. The GatewayID if you know it from ADF side, eg. GatewayId=="abd041f4-3c5b-4461-85ae-9bdee49938b3" 
