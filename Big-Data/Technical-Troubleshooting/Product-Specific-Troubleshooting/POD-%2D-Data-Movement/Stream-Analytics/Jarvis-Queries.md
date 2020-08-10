[JARVIS Walk-Through Video](https://msit.microsoftstream.com/video/52cea3ff-0400-a521-4279-f1ead6a5f722)

ENDPOINT
|Endpoint|Description|
|--|--|
|Diagnostics PROD|General region search|

COMMON JARVIS NAMESPACE
|Namespace  | Description |
|--|--|
|AzureNRTProd | Internal Product |
| seaup | East US |



COMMON JARVIS TABLES

| Table |Description  |
|--|--|
| Job Signals | Dashboard with key metrics.  |
|TraceJobStatus|Status changes for the job SU & JobRun ID.  |
|JobQosEvent  |Status changes for the job SU & JobRun ID.  |
| AzureUserEvents | Logs shown to ASA customer |
|TraceEvent  |System error and warning events.  |
| TraceVerbose |Trace Information and CPU  |
| TraceMonitoringEvent |Internal Metrics  |
|TopologyDgml  | Trace Events table with dgml filter for Job Topology |
|Job Metadata  | Job properties associated with the ASA job Configuration. |

Below are the list of Jarvis queries we use to perform our troubleshooting. While our primary troubleshooting tool is ASC, these details are here for your convenience if you wish to manually review logs.

Any values contained within <> should be replaced.

#Job Signal
- Provides an overall picture of job health with charts for:
- Input, Output
- Number of Errors,
- Input/output Adapter latency,
- Watermark delay
- Resource Utilization.


https://jarvis-west.dc.ad.msft.net/dashboard/AzureNRTProd/JobStatusSignals/Signals%2520By%2520Job?overrides=[{%22query%22:%22//*[id=%27SubscriptionId%27]%22,%22key%22:%22value%22,%22replacement%22:%220732b52e-6aa9-4098-87e1-c148f2a4f878%22},{%22query%22:%22//*[id=%27ResourceGroup%27]%22,%22key%22:%22value%22,%22replacement%22:%22nsprdeutoccrg%22},{%22query%22:%22//*[id=%27ResourceName%27]%22,%22key%22:%22value%22,%22replacement%22:%22nsprdeutoccsajdatapartner%22},{%22query%22:%22//*[id=%27ResourceId%27]%22,%22key%22:%22value%22,%22replacement%22:%22/subscriptions/<subId>/resourceGroups/<resourceGroup>/providers/Microsoft.StreamAnalytics/streamingjobs/<jobname>%22}]%20

#Finding ASA Job on a Subscription
You can also get the JobID from this query, which is needed for other Jarvis queries, this is not the same as the JobRunID or ActivityID.

**Table:** 
TraceJobStatus

**Filtering Condition:** 
```where subscriptionId=="<subid>" AND resourceName =="<ASA Namespace>"```

#Find ASA Job Run IDs
JobRunID is equivalent to the ActivityID and is needed for several other Jarvis queries.

**Table:** 
TraceJobStatus

**Filtering Condition:**
```where jobId=="<jobID>"```

**Client Query:**
```groupby jobRunId let minTimestamp  = Min(PreciseTimestamp), maxTimestamp  = Max(PreciseTimeStamp), diff  = Max(PreciseTimestamp) - Min(PreciseTimestamp), lastStatus  = Last().status, lastClusterName  = Last().clusterName```

#Determining job health status and number of SU
**Table:**
TraceJobStatus

**Filtering Condition:** 
```where subscriptionId.ToLower() = "<subid>".ToLower() and resourceName.ToLower() = "<jobname>".ToLower() and resourceGroupName.ToLower() = "<resourceGroupName>".ToLower() groupby status let Total = count() let SU = Max(StreamingUnits) let clusterName = Max(clusterName)```

#Job QoS
Determines the health of incoming and outgoing connections.

**Table:** 
Job QoS Event

**Filtering Condition:**
```where JobRunId = "<JobRunId>" and ScenarioId = 2 groupby JobRunId, operationName, resultType let count = Sum(Count) let DurationMs = Sum(durationMs)```

#Azure User Events
User facing messages (found in Activity Log on portal).

**Table:** 
Azure User Events

**Filtering Condition:**
```where ActivityId = "<jobRunID>"```

(activityID is the same as JobRunID)

#Trace Event
Internal messages and errors of significance.

**Table:** 
Trace Event

**Filtering Condition:**
```where      ( Level<=3 or Type = "DataConversionError\UserActionableException" or  exception.ContainsI("at Microsoft.Streaming.Diagnostics.DataErrorPolicies.StopPolicy.ErrorAction"))     and ActivityId = "<jobRunID>"```

#Detailed Traces

**Table:** 
TraceInformation, TraceVerbose

**Filtering Condition:**
```where ActivityId = "<jobRunID>"```

#Job Metrics
Detailed metrics of job performance.

**Table:** 
JobMetrics1MRollup

**Filtering Condition:**
```where ActivityId.ToLower() = "<jobRunID>".ToLower() and ( MetricName = "OutputEventsTotal" or MetricName = "DegradedEventsTotal" or MetricName = "InputEventsDegradedTotal" or MetricName = "InputEventsEarlyTotal" or MetricName = "InputEventsLateTotal" or MetricName = "InputEventsSerializerErrorsTotal" or MetricName = "QueryDroppedOrAdjustedEventsTotal" or MetricName = "QueryEventsReadTotal" or MetricName = "InputEventsSourcesTotal" or MetricName = "InputEventsTotal" or MetricName = "InputEventsLastArrivalTime" or MetricName = "OutputLastPunctuationTime" or MetricName = "RefDataCacheRangeEndTime" or MetricName = "ResourceUtilizationAsPercentage" or MetricName = "CpuUtilizationAsPercentage" or MetricName = "OutputLastPunctuationTime" or MetricName = "QueryLastPunctuationTime" or MetricName = "InputEventsSourcesBacklogged" or MetricName = "InputEventsLastPunctuationTime" or MetricName = "OutputEventsSerializerErrorsTotal" or MetricName = "StreamingProcessorWatermark" or (MetricName = "InputAdapterGetBatchRequestsTotal" and ProcessorType = "Input"))```

**Chart Query:**
```groupby TIMESTAMP.roundDown("PT1M") as X, MetricName, Max```

#DGML
A markup file which represents the job topology.

**Table:** 
TraceEvent

**Filtering Condition:**
```where ActivityId == "<jobRunID>" and type = "DgmlTopology" let PreciseTimestamp = PreciseTimeStamp.RoundDown("PT30S") select PreciseTimestamp, message ```

#Metadata
Job configuration details such as input, output, policies, and anonymous query.

**Table:** 
TraceEvent

**Filtering condition:**
```where ActivityId == "<jobRunID>" and type == "Metadata" and activityName == "container" let PreciseTimestamp = PreciseTimeStamp.RoundDown("PT30S") select PreciseTimestamp, message ```









