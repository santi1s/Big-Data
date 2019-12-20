_First download Kusto, and make sure you have successfully added all connections listed in [Tools and Teams](/Data-Movement-POD/Data-Factory/Tools-and-Teams)_

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

# Azure Data Factory V2 Queries

# Azure Data Factory V1 Queries