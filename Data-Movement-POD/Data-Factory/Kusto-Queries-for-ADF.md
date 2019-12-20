_First [download Kusto](/Data-Movement-POD/Data-Factory/Tools-and-Teams), and make sure you have successfully added all connections listed in [Tools and Teams](/Data-Movement-POD/Data-Factory/Tools-and-Teams)_

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

# Azure Data Factory V2 Queries

_Queries to find pipelines and activity runs. Search in Adfcus or Adfneu depending on the region of the data factory._

When a customer provides a Run ID and a timestamp, you can check if this is an Activity ID or a Run ID by running this query:
`ActivityRuns
| where * == "<RUN ID>"`

Using RUNID:
AdfTraceEvent 
| where TraceCorrelationId == "<RUN ID>"; 

Using RunId:
ActivityRuns 
| where pipelineRunId == "<RUN ID>;

Under Azuredmprod (data movement)
Using ACTIVITY ID:
CustomLogEvent
| where ActivityId == "<Activity ID>";

Using Activity ID:
ExecutionApiCall
| where * contains "<Activity ID>"


# Azure Data Factory V1 Queries