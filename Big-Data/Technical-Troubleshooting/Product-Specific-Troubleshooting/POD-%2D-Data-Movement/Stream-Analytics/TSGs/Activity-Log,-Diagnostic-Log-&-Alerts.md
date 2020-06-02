**ASA Monitoring and Alerting** 

[[_TOC_]]
##**I. Overview** 

   - Monitoring logs available using Activity Log and Diagnostic logs 

   - Activity Logs. Provides insight into the operations on each Azure resource in the subscription from the outside (the management plane) in addition to updates on Service Health events. Use the Activity Log, to determine the what, who, and when for any write operations (PUT, POST, DELETE) taken on the resources in your subscription. You can also understand the status of the operation and other relevant properties. There is a single Activity log for each Azure subscription.

   - Example of Data seen in logs : <span style="color:#0000FF"> "Message": "First Occurred: 06/02/2020 16:47:26 | Resource Name: tblAgencySmartpointDesktopDependenciesAllhb | Message: Source 'tblAgencySmartpointDesktopDependenciesAllhb' had 1 occurrences of kind 'OutputDataConversionError.TypeConversionError' between processing times '2020-06-02T16:47:26.9059077Z' and '2020-06-02T16:47:26.9215736Z'. "</span>

   - Diagnostic Logs. Stream Analytics writes detailed information and example events to the resource logs. In some cases, summary of this information is also provided through portal notifications.  Turning on resource logs and sending them to Azure Monitor logs is highly recommended. They are off by default.  Q. What is the Pricing associated with using Diagnostic log Monitoring and Alerting? 

   - Example of Error detail seen in logs [detials comming soon]

   - Setup Alerting. It's important to monitor your Azure Stream Analytics job to ensure the job is running continuously without any problems. 

   - Walkthrough Video to Setup Diagnostic Monitoring and Alerts [details comming soon] 

##**II. Monitor Activity log**
   1. The Azure Activity Log provides insight into subscription-level events that have occurred in Azure. This article provides details on different methods for viewing and retrieving Activity Log events. 
     https://docs.microsoft.com/en-us/azure/azure-monitor/platform/activity-log-view

##**III. STEPS: Setup and Monitor Diagnostic logs and Alert**  

   1. Create Log Analytics resource (in same region as ASA job) 
https://docs.microsoft.com/en-us/azure/azure-monitor/platform/resource-logs-collect-workspace 

   2. Create Diagnostic Log. To turn them on, complete these steps: 
https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-job-diagnostic-logs#send-diagnostics-to-azure-monitor-logs 

   3. Go to Logs in ASA Monitor and select what you want to monitor (query against the logs)
https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-job-diagnostic-logs#send-diagnostics-to-azure-monitor-logs 

   4. Setup Alerting. This article describes how to set up alerts for common scenarios that should be monitored. 
https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-set-up-alerts#set-up-alerts-in-the-azure-portal 

[[_TOC_]]