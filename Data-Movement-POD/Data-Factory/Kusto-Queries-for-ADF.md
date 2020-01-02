_First [download Kusto](/Data-Movement-POD/Data-Factory/Tools-and-Teams), and make sure you have successfully added all connections listed in [Tools and Teams](/Data-Movement-POD/Data-Factory/Tools-and-Teams)_

[[_TOC_]]


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

# Azure Data Factory V1 Queries

(Coming soon!)