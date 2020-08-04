_First [download Kusto](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/275631/Tools-and-Teams), and make sure you have successfully added all connections listed in [Tools and Teams](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/275631/Tools-and-Teams)_

[[_TOC_]]

::: video
#Kusto Basics Video
<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/9738a4ff-0400-a936-bb52-f1eaa762b22e?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>
:::

<details>
  <summary>Video Timestamps</summary>

**_ActivityRuns_**

_ActivityRuns - **01:58**_ - Basics
_ActivityRuns - **03:35**_ - Pipeline Run ID or Activity Run ID
_ActivityRuns - **04:30**_ - Useful Columns in Activity Runs
_ActivityRuns - **08:20**_ - Historical Pipeline Data
_ActivityRuns - **11:55**_ - Debug/Sandbox Runs
_ActivityRuns - **13:50**_ - Effective Integration Runtime
_ActivityRuns - **15:10**_ - Comparing Historical Runs
_ActivityRuns - **17:07**_ - Historical Runs by Timestamp

**_CustomLogEvent_**

_CustomLogEvent - **19:53**_ - Basics
_CustomLogEvent - **22:07**_ - Timestamps
_CustomLogEvent - **22:34**_ - Message Column
_CustomLogEvent - **23:30**_ - Source and Activity Messages (Pipeline Information)
_CustomLogEvent - **29:00**_ - Azure Resource Names
_CustomLogEvent - **31:00**_ - Warnings/Region Warnings/Region Detection
_CustomLogEvent - **33:53**_ - Run Messages
_CustomLogEvent - **35:40**_ - Status Output (Completed Pipeline Run Information)
_CustomLogEvent - **40:58**_ - Pipeline Failures
_CustomLogEvent - **44:24**_ - Warnings/Failures for Failed Pipeline

**_JobInfo/Heartbeats_**

_Job Info_ - **46:56** - Finding Self-Hosted IR Information
_Job Info_ - **48:28** - IR information from Job Info (Agent ID/Gateway Version)
_Heartbeats_ - **49:40** - What is the Heartbeats Table?
_Heartbeats_ - **51:36** - Useful Heartbeats Information (Agent Instance/Telemetries)
_Heartbeats_ - **52:35** - Specify a Node
_Heartbeats_ - **53:12** - Reading Telemetries


</details>

<details>
  <summary>Queries Used in Video</summary>

```
//Run ID
//c2a53c40-687a-4306-b637-4dcab92b0a3c

//Activity Runs
ActivityRuns
| where * == "f011459a-4e1f-4f9f-9fdc-fcee7a0159a5"

ActivityRuns
| where * == "f011459a-4e1f-4f9f-9fdc-fcee7a0159a5"
| where status != "InProgress" and status != "Queued"

ActivityRuns
| where subscriptionId =~ "ECED600C-1185-4AE6-8B70-868D11F0E810"
| where dataFactoryName =~ "DFTRAININGADFWHHENDER"
| where pipelineName =~ "s0pipelinewhhender"
| where activityName =~ "Copy data1"
| where status != "InProgress" and status != "Queued"
| order by TIMESTAMP asc


// Search by TimeFrame
ActivityRuns
| where subscriptionId =~ "ECED600C-1185-4AE6-8B70-868D11F0E810"
| where dataFactoryName =~ "DFTRAININGADFWHHENDER"
| where status != "InProgress" and status != "Queued"
| where TIMESTAMP >= datetime(2020-06-04 00:00:00) and TIMESTAMP <= datetime(2020-06-05 07:00:00)


//Recent Successful Run ID: c2a53c40-687a-4306-b637-4dcab92b0a3c
//Failed Run ID: 54981508-d97b-419e-bd93-500c37e5ca20

CustomLogEvent
| where ActivityId == "c2a53c40-687a-4306-b637-4dcab92b0a3c"
| order by TIMESTAMP asc

CustomLogEvent
| where ActivityId == "54981508-d97b-419e-bd93-500c37e5ca20"
| order by TIMESTAMP asc


//Activity ID: c2a53c40-687a-4306-b637-4dcab92b0a3c
//Start Time: datetime(2020-06-05 16:02:23.1802710)
//End Time : datetime(2020-06-05 16:02:48.0436446)
//Agent ID: 611ed2fb-5b29-4671-8e90-f0a76fbadf9f

JobInfo
| where ActivityId == "c2a53c40-687a-4306-b637-4dcab92b0a3c"

//aka.ms/bigdata
//Search: Kusto
//Select "Heartbeats" from Table of Contents

Heartbeats 
| where AgentGroupId == "611ed2fb-5b29-4671-8e90-f0a76fbadf9f" 
and TIMESTAMP >= datetime(2020-06-03 16:02:23.1802710) and TIMESTAMP <= datetime(2020-06-05 16:02:48.0436446)
|where AgentInstanceName == "Node_1"
```

</details>

::: video
#Kusto Extra Searches Video
<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/d14da1ff-0400-a936-2899-f1eaaa5a805e?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>
:::

<details>
  <summary>Video Timestamps</summary>

_Connections - **00:18**_ - Basics
_Connections - **01:04**_ - List of Tables
_Connections - **02:48**_ - List of Columns
_Connections - **03:30**_ - Auto-Populate Queries

_Search ++ - **04:00**_ - Basics
_Search ++ - **05:46**_ - Reading Search++ Data

</details>

   
#Kusto Basics for ADF

There are four connections that we can use in Kusto to find logs regarding data factory.
![image.png](/.attachments/image-63d93683-c647-4451-b828-f3fbec396cbe.png)

**Adfcus** - Data Factory information for all Data Factories in the US regions. Activity Runs, Trigger Runs, Pipeline Runs, API Events, etc...
**Adfneu** - Data Factory information for all Data Factories in the Europe regions.
**Armprod** - ARM deployment information, for issues with data factory resource creation/deletion, or pipeline creation/deletion
**Azuredmprod** - Data movement information for all Data Factories. Logging information for Copy Activities, Custom Activities, and any other activities associated with the Data Movement team.

To run a query against one of these connections, you'll need to select the connection itself, before running your query.
![image.png](/.attachments/image-b507659a-faa9-4681-8ba1-211d7f6c8705.png)

You can see all tables in any connection by clicking the carrot beside the connection, then the carrot beside the database.
All tables are listed there. You can also see the columns in each table by clicking the carrot beside each table.
![image.png](/.attachments/image-31ef996e-26c5-4c7d-8fb3-5195fa582456.png)

**_Not sure what table to look at?_** 
You can use Search ++ to make a quick review of all tables, and see which one has data associated with your run ID.
1. Change the 'Query' tab to 'Search++'
![image.png](/.attachments/image-8ea67ba4-9098-4242-8dab-beccaa9c511b.png)
2. Select "Multiple Tables", select "All Tables", make sure the timestamp is accurate to the time frame you are looking for, add your run id/activity id/other value, and select Go.![image.png](/.attachments/image-00e75ea3-edec-4291-89fe-306735fb2677.png)

3. If any tables have associated data, they will show up with the number of rows that have the data you are looking for. You can click the number of rows and then select "View Details" to see the logs.
![image.png](/.attachments/image-75aa793c-b503-4ac2-ae1a-c2ea264fe80d.png)

# Helpful Kusto Language Tidbits

1. Make a search be agnostic to case using =~ instead of ==
For example, the below query will ignore the case of whhenderadf when returning results: 

```
ActivityRuns
| where dataFactoryName =~ "whhenderadf"
```

2. Include only some columns in your results by using 'project' and then listing the columns you want. 
For example:

```
ActivityRuns
| where subscriptionId =~ "204671FF-5130-9999-819C-E314B65F9D06"
| where dataFactoryName =~ "whhenderadf"
| project TIMESTAMP, pipelineName, pipelineRunId, activityName, activityRunId, status, effectiveIntegrationRuntime
``` 

3. You can search a date range in the past from your current date by using the ago( ) function.
For example, the below query searches for anything in the last 5 days:
```
ActivityRuns
| where subscriptionId =~ "204671FF-5130-9999-819C-E314B65F9D06"
| where dataFactoryName =~ "whhenderadf"
| where TIMESTAMP >= ago(5d)
```



# Azure Data Factory V2 Queries by Table


###PipelineRuns

Pipeline Runs will give you information about all the pipelines that ran in a customer's environment.
It will tell you when they ran and give you their status and pipeline run ID.

```
PipelineRuns
| where * == "<RUN ID>"
```

Most helpfully, you can use PipelineRuns to find the runs from "ExecutePipeline" activities!
Using the Activity ID of the Execute Pipeline activity, like below:

```
PipelineRuns
| where predecessors contains "<Execute Pipeline Activity ID>"
```

###ActivityRuns 
_(Query against Adfcus or Adfneu depending on the region of the data factory.)_

The ActivityRuns table will tell you all the activities that ran for specific pipelines, when they ran, what integration runtime they used, and what their status is/was.

When a customer provides a Run ID and a timestamp, you can check if this is an Activity ID or a Run ID by running this query:
```
ActivityRuns
| where * == "<RUN ID>"
```


Then you can check which column it falls under. If you know if you have a pipeline run ID or activity run ID, you can use the associated value:

```
ActivityRuns
| where pipelineRunId == "<RUN ID>"
```

```
ActivityRuns
| where activityRunId == "<RUN ID>"
```

You can use this information to gather the **activityRunId** which you can use to find run-time information from the table CustomLogEvent.
However, you can also use ActivityRuns to see which activities are failing, what kind of activity was failing, and how frequently it is failing.

You can use a query like the one below to see how frequently a specific activity failed in the last few days. This can help to pinpoint an intermittent issue, or a continuous issue.
```
ActivityRuns
| where subscriptionId =~ "204671FF-5130-9999-819C-E314B65F9D06"
| where dataFactoryName =~ "whhenderadf"
| where activityName == "CustomActivity1"
| where status != "InProgress"
| where status != "Queued"
| where TIMESTAMP >= ago (5d)
|project TIMESTAMP, pipelineName, pipelineRunId, activityRunId, status
```


###CustomLogEvent
_(Query against Azuredmprod)_
The CustomLogEvent table will give you run information on any Data Movement based activity (things like Copy Activities, Custom Activites, etc...)

For CustomLogEvent you'll use the Activity Run ID, either given to you by the customer, or found using the ActivityRuns table:
```
CustomLogEvent
| where ActivityId == "<Activity ID>"
```

Look under the "Message" column for runtime information, output information, and error information.

Here's a query you can use to check for the execution information like timeToFirstByte (how long it took for the source to return the first byte of data), queued time (how long it took ADF to run the activity), and the time that each stage of a copy activity took to run (if staging is enabled).

```
CustomLogEvent 
| where ActivityId == "<ActivityId>" and TraceMessage == "TransferServiceExecutorExecutionState"
```

###JobInfo
_(Query against Azuredmprod)_
JobInfo can give you information about the integration runtime, and is useful when a customer is using a self-hosted integration runtime. From JobInfo you can find the version, name, and ID of the self-hosted integration runtime using the activity ID

```
JobInfo 
| where ActivityId == "<ActivityId>"
```

###Heartbeats
_(Query against Azuredmprod)_
You can use the heartbeats table to look at the health/traffic of a self-hosted IR during an activity run.
```
Heartbeats 
| where AgentGroupId == "<AgentId from JobInfo>" 
and TIMESTAMP >= start_time of activity and TIMESTAMP <= end_time of activity
```
We'll want to look at The 'Telemetries' column, at the values below.
 
Max Capacity - the number of jobs allowed to run on the machine
Used Capacity - the number of jobs that are actually running on the machine
 
CPUUtilization - how much of the CPU is being run at any one time.
 
We're checking these values for the full runtime of the job. If CPU is high, or if Used Capacity is within 1 or 2 jobs of Max capacity, that's a problem.

# Azure Data Factory V1 Queries
Under adfcus(us) or adfneu(europe)

Using Subscription ID:
(use this to find pipeline name or RunID if you only have a timestamp)
ExecutionEvents
| where TIMESTAMP > datetime(2018-02-23 12:00) 
| where TIMESTAMP <= datetime(2018-02-23 13:30) 
| where subscriptionId=="<SUBSCRIPTION ID>"
| order by TIMESTAMP 

Using Pipeline Name:
(use this to find RunID if you still don't have it)
ExecutionEvents
| where TIMESTAMP > datetime(2018-02-23 20:00) 
| where TIMESTAMP <= datetime(2018-02-23 21:30) 
| where pipelineName=="<NAME>"
| where subscriptionId=="<Subscription ID>"
| order by TIMESTAMP 

Using RunID:
(Use this to find errors, and activity IDs)
ExecutionEvents
| where runId =="<RUN ID>"
| order by TIMESTAMP 

Using ActivityID:
TraceLogV2
| where ActivityId =="<Activity ID>"
| order by TIMESTAMP 

Under Azuredmprod (Data movement)

Using ActivityID:
CustomLogEvent | where * contains