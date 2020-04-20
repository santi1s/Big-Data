Sometimes, if you have nested pipeline,  it could be very hard to identify the problematic part, with below functionality, you can quickly identify the issue like below.

 

 

Useful kusto query:

// ADMS runtime troubleshoot
ActivityRuns
| where * has @"81f65585-1fe8-4077-a6fb-228cba34bf1d"

PipelineRuns
| where * has @"59cf9ab9-1088-4f02-b5f9-1ff6ea9f1835"

ActivityRuns
| where pipelineRunId == "f4a9251c-9df6-485c-815c-48bfede024b0"

PipelineRuns
| where * has @"99bf982a-76b4-4780-beb6-c9b947a75d1c"

ActivityRuns
| where pipelineRunId == "78d6a732-27cd-4ed7-a958-15398d711d74"

GetFailedCopyFromChainedPipeline("6e6bce0a-18b4-45f3-836e-6e5eadde4ebd")

cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').ExecutionApiCall
| where * has @"ddeeabec-4b36-4386-bfa2-3de00e427f79"

GetErrorFromNestedCopy("6e6bce0a-18b4-45f3-836e-6e5eadde4ebd")

cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').CustomLogEvent
| where * has @"ddeeabec-4b36-4386-bfa2-3de00e427f79"

cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').Telemetry_CompleteCopyActivityRuns
| where ActivityId == "ddeeabec-4b36-4386-bfa2-3de00e427f79"

cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').Heartbeats
| where SubscriptionId has @"9ea56b96-3de0-4f63-bed3-efa142806eba"
| where AgentGroupName has @"EUW-C-IR-JANEWAY" 
| project TIMESTAMP , AgentGroupName, t = parsejson(Telemetries) 
| extend AvaliableMemory=toint(t["AvaliableMemory"]), TotalMemory=toint(t["TotalMemory"]), CpuUtilization=toint(t["CpuUtilization"]), UsedCapacity=toint(t["UsedCapacity"]), MaxCapacity=toint(t["MaxCapacity"]), todouble(SendBytes=t["SendBytes"]), todouble(ReceiveBytes=t["ReceiveBytes"])
| project-away t
| where TIMESTAMP > datetime(2020-02-09 22:00:00.6598060) and TIMESTAMP < datetime(2020-02-09 23:24:27.6598060)


// Dataflow/Dispatcher Activities troubleshoot
cluster('https://adfcus.kusto.windows.net').database('AzureDataFactory').ActivityRuns
| where * has @"a58baa93-0810-4142-af8e-cc1b1a823c5e"

cluster('https://adfcus.kusto.windows.net').database('AzureDataFactory').ApiOperationEvent
| where * has @"a5feabfb-2416-46b0-944a-a92eadbc0b88"
| where (env_time >= datetime(2020-01-24T00:39:14.2080000Z) and env_time <= datetime(2020-01-24T14:39:14.2080000Z))

cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').CustomLogEvent
| where * has @"a5feabfb-2416-46b0-944a-a92eadbc0b88"

cluster('https://adfcus.kusto.windows.net').database('AzureDataFactory').DatabrickLoggingTest
| where TraceCorrelationId contains "a58baa93-0810-4142-af8e-cc1b1a823c5e"


cluster('https://adfcus.kusto.windows.net').database('AzureDataFactory').DatabrickLoggingTest
| where TraceCorrelationId contains "b4e3862b-f543-4491-a88b-7bd90b7b4ff5"


//Kusto query tips
let activityRun = cluster('https://adfneu.kusto.windows.net').database('AzureDataFactory').ActivityRuns 
| where (TIMESTAMP >= datetime(2020-02-05T11:39:14.2080000Z) and TIMESTAMP <= datetime(2020-02-20T14:39:14.2080000Z))
| where dataFactoryName has @"WeS06PdDfa14442Main"
| where activityType == @"Custom"
| where status == @"Failed"
| project activityRunId;
cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').CustomLogEvent 
| where Message has @"BatchLinkedService validate failed"
| join activityRun on $left.ActivityId==$right.activityRunId;

let activityRun = cluster('https://adfneu.kusto.windows.net').database('AzureDataFactory').ActivityRuns 
| where (TIMESTAMP >= datetime(2020-02-05T11:39:14.2080000Z) and TIMESTAMP <= datetime(2020-02-20T14:39:14.2080000Z))
| where dataFactoryName has @"WeS06PdDfa14442Main"
| where activityType == @"Custom"
| where status == @"Failed"
| project activityRunId
| distinct activityRunId;
let admsRunId = cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').CustomLogEvent 
| where Message has @"BatchLinkedService validate failed"
| where ActivityId in (activityRun)
| project ActivityId
| distinct ActivityId;
cluster('https://azuredmprod.kusto.windows.net').database('AzureDataMovement').CustomLogEvent
| where ActivityId in (admsRunId);

let startTime = toscalar(
cluster('https://adfneu.kusto.windows.net').database('AzureDataFactory').PipelineRuns 
| where runId == "6e6bce0a-18b4-45f3-836e-6e5eadde4ebd"
| where status == "Failed" 
| extend start = datetime_add('hour',-1,TIMESTAMP) 
| distinct start 
| sort by start asc nulls last 
| take 1
);
print startTime;

let startTime = toscalar(
cluster('https://adfneu.kusto.windows.net').database('AzureDataFactory').PipelineRuns 
| where runId == "6e6bce0a-18b4-45f3-836e-6e5eadde4ebd"
| where status == "Failed" 
| extend start = datetime_add('hour',-1,TIMESTAMP) 
| distinct start 
| sort by start asc nulls last 
| take 1
);
cluster('https://adfneu.kusto.windows.net').database('AzureDataFactory').PipelineRuns 
| where runId == "6e6bce0a-18b4-45f3-836e-6e5eadde4ebd"
| where status == "Failed" 
| extend parent = tostring(parse_json(predecessors)[0].["Name"]), parentType = tostring(parse_json(predecessors)[0].["InvokedByType"])
| where TIMESTAMP >= startTime;

