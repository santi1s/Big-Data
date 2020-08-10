**SUMMARY**
It is important to note that the data will be stored in the input and the output but not in Azure Stream Analytics.  Azure Stream Analytics smart technology will pull from the Input from when the job stopped processing.  In the case that the input is an EventHub, the data in EventHub will be accessible by default from EventHub for 7 days.  You can store data longer using EventHub capture. The Azure Stream Analytics job can then be started from the past to pull in the data from the past or the job can be configured to read from the backup captured blob to read data in the past.  There are a number of ways to backup the Azure Stream Analytics job or recover from an event.  These options are listed below: 

1.  Azure Paired Region Model 

Stream Analytics guarantees jobs in paired regions are updated in separate batches. As a result there is a sufficient time gap between the updates to identify potential issues and remediate them 

You should then monitor these jobs to get notified when something unexpected happens. If one of these jobs ends up in a Failed state after a Stream Analytics service update, you can contact customer support to help identify the root cause. You should also fail over any downstream consumers to the healthy job output. 
 
Information referenced in online support article https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-job-reliability 

 
2. Copy or Backup Azure Stream Analytics jobs.   

You can copy or back up your deployed Azure Stream Analytics jobs using Visual Studio Code or Visual Studio. Copying a job to another region does not copy the last output time. Therefore, you cannot use When last stopped option when starting the copied job. 

Information referenced from online support article https://docs.microsoft.com/en-us/azure/stream-analytics/copy-job 

Furthermore, you can integrate GitHub with Visual Studio to backup your Azure Stream Analytics job in GitHub as well. 

Export ASA job in Visual Studio Code 

3. Start Azure Stream Analytics When last stopped.  

This option is available when the job was previously started, but was stopped manually or failed. When choosing this option Azure Stream Analytics will use the last output time to restart the job so no data is lost. Similarly to previous options, Azure Stream Analytics will automatically read the data prior to this time if a temporal operator is used. Since several input partitions may have different time, the earliest stop time of all partitions is used, as a result some duplicates may be seen in the output. More information about exactly-once processing are available on the page Event Delivery Guarantees. 

More information referenced here https://docs.microsoft.com/en-us/azure/stream-analytics/start-job#start-options 

 

 

4. Job recovery from node failure, including OS upgrade 

Each time a Stream Analytics job runs, internally it is scaled out to do work across multiple worker nodes. Each worker node's state is checkpointed every few minutes, which helps the system recover if a failure occurs. 

At times, a given worker node may fail, or an Operating System upgrade can occur for that worker node. To recover automatically, Stream Analytics acquires a new healthy node, and the prior worker node's state is restored from the latest available checkpoint. To resume the work, a small amount of replay is necessary to restore the state from the time when the checkpoint is taken. Usually, the restore gap is only a few minutes. When enough Streaming Units are selected for the job, the replay should be completed quickly. 

More information available online here https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-concepts-checkpoint-replay#job-recovery-from-node-failure-including-os-upgrade 

 

5. Get alerted when a job stops unexpectedly 

Azure Stream Analytics job to ensure the job is running continuously without any problems. You can setup alerts for common scenarios that should be monitored such as when the job enters a failed state. 

Azure portal Stream Analytics alerts setup 

Information available online here https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-set-up-alerts#get-alerted-when-a-job-stops-unexpectedly 

You can define rules on metrics from Operation Logs data through the portal, as well as programmatically. 

 