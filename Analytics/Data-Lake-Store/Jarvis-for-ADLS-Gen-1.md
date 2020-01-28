[[_TOC_]]

--WIP--

# What is this Guide For?
This guide covers the basics of the Jarvis UI and using Jarvis to query for Azure Data Lake Store specifically.
It does not contain troubleshooting steps for specific situations. For troubleshooting guides, see  the TSG section!
This guide is meant to familiarize you with the tool and give you some reference points for using Jarvis to troubleshoot ADLS issues.

_If you have any problems authenticating or do not have access to Jarvis - please reach out to your TA._

#Quick Reference for Getting Started with Jarvis for ADLS
1. Go to https://jarvis-west.dc.ad.msft.net/logs/dgrep
2. Set Endpoint to 'Diagnostics PROD'
3. Set Namespace to 'AzureDataLake'
4. Set Events to search to 'CfeHttpEvent'
5. Set your Time Range to your known issue timestamp.
6. Under Scoping Conditions set 'Region' to the region of the data lake you are looking into.
7. Under Filtering conditions set 'KiwiAccountName' to the name of the data lake you are looking into.
8. Run the query by pressing the blue magnifying glass 'Run' button.
9. Make sure to refresh your Logs pane once the query has finished running to make sure you are viewing all results.
10. Check the 'Columns' button at the very bottom of the Logs pane to confirm that you are looking at all columns/the columns you need.

#Quick Tips/Gotchas in Jarvis
1. When searching for a specific operation/error on the data lake, **start with a broad query** (just the name of the data lake and a broad timestamp) and then narrow your query step by step to confirm that all your settings are correct as you query the data.
Starting with a broad query to make sure you are able to find logs for the data lake in general before narrowing to a specific error message will help to avoid assuming you cannot find logs for a specific error when really your original query was incorrect.

2. Can't find the column you're looking for in the logs? At the bottom of the logs pane is a column button that will show you how many columns are being displayed. Click it to select all columns, or select the column you need.
![image.png](/.attachments/image-ada6f9bd-3b50-4942-a898-4a535caab76e.png)

3. Not finding logs for the timestamp you expect?
- Make sure that you're looking at the right timezone (either have UTC time select, or be searching for local time).
- Make sure that the timestamp you are using is adjusted for the correct timezone.
- Check the Date value under time range, and make sure you are looking at the correct day.

4. Getting a weird error for a column that doesn't exist in your data, and you're seeing no logs even though the query says it has returned records? Check the 'Client Query' section at the top of the page. It may be filtering by a column that you don't expect. Remove this column by moussing over the row number next to the filter.
![image.png](/.attachments/image-11d4fd79-8596-4052-ae6d-8f58dd565ab5.png)
![image.png](/.attachments/image-1bd0c198-d3e7-4da0-b404-4ab80f562593.png)

5. Query being throttled? 
Narrow the time range you are searching or dd more filtering conditions to your query to pull down a smaller amount of data


# Overview of Jarvis Settings
To Access Jarvis - Go to this link: https://jarvis-west.dc.ad.msft.net/logs/dgrep

You will be asked to authenticate before you are able to query any tables. It may ask you right when you enter the page, or it may ask when you click the 'search' button.

_If you have any problems authenticating or do not have access to Jarvis - please reach out to your TA._

When you open Jarvis, it is divided up into three main sections, which we will cover below.
![Jarvis Overview.jpg](/.attachments/Jarvis%20Overview-8ea089ff-a49d-4c8d-a425-8a710f6af15f.jpg)

## Server Query Pane
The Server Query Pane is the pane on the left hand side of the page, and has all the information you will use to query your data.
Here we can create our queries and gather the link to a specific query to share with others, or to bring up later.
![Jarvis Overview.jpg](/.attachments/Jarvis%20Overview-d86cc34f-f7c0-44fd-b02d-88ab408a89f2.jpg)
### Endpoint
The Endpoint option in Jarvis is essentially the logs 'Server' we are pointing our query to in Jarvis.
For ADLS, you will use 'Diagnostics PROD'
![image.png](/.attachments/image-6ffd6171-e420-46ca-8b8d-6c267d6a6669.png)

### Namespace
The Namespace option in Jarvis is essentially the logs 'Database' we are pointing our query to in Jarvis.
For ADLS, you will use 'AzureDataLake'
![image.png](/.attachments/image-94b98e07-da73-43a4-b19b-84a62814ae15.png)

### Events to Search
The Events to Search option in Jarvis is essentially the logs 'Table' we are pointing our query to in Jarvis.
For ADLS, you will generally use 'CfeHttpEvent' though sometimes TSGs will point you to other Events to Search. If you are following a TSG, pay attention to what Events to Search, and which Logs columns you are looking for.
![image.png](/.attachments/image-255210b3-7487-4970-b031-2191f05f782f.png)

### Time Range
The Time Range search option sets the time window for the records you can pull, and is important to being able to effectively/quickly search the data.
![image.png](/.attachments/image-f1af5e58-e2a7-4912-bad9-f82d516d68af.png)

Note the 'UTC' option next to the time stamp.
![image.png](/.attachments/image-f9206466-dfa8-446a-bae0-e0f61245817e.png)

**UTC option is Blue** - The timestamp is set to UTC time and will return logs with matching UTC timestamps.
**UTC option is White** - The timestamp is set to LOCAL time, and the query will return logs in the corresponding UTC time.

The 'Now' button (shown in green below) will set the timestamp to the current time.
The minutes options below the timestamp will adjust the time of the timestamp by the corresponding number of minutes.
![image.png](/.attachments/image-852832c1-0b53-42b2-9de4-27091cabb61d.png)

Next to the timestamp options, are the time range options.
![image.png](/.attachments/image-f6e709d0-e8cb-4cf1-a6c1-0a887ab962d8.png)

These options allow you to set the range of logs around the timestamp that you need to query.

The +, -, and +/- options allow you to set if you are searching for a range of time after, before, or after and before your timestamp.
![image.png](/.attachments/image-3def934f-9935-4ad4-b70e-7c581485705f.png)

The numerical range value 

### Scoping Conditions
### Filtering Conditions
### Link
## Logs Pane
The Logs Pane is the center pane in Jarvis, and after you run your query, it will contain all the logs retrieved. The view will be filtered by the results filters at the top of the page. Here you can view and filter the data, select what columns to see, organize data by column, or download the data.
![Jarvis Overview.jpg](/.attachments/Jarvis%20Overview-f4aa635b-7015-4583-82f7-198cd42688a4.jpg)


### The Logs
### Number of Columns
### Client Query/Results Filters
### Download Results

## Aggregates Pane
The Aggregates Pane is the right-hand pane in Jarvis, and can be used to aggregate data in your query by column.
![Jarvis Overview.jpg](/.attachments/Jarvis%20Overview-01eeedbf-6a68-432e-8d7a-f36ca45ae7d9.jpg)

#Jarvis for ADLS
##Standard Query
##Important Columns
Of course, all these columns contain important/useful information for troubleshooting data lake.
Below are outlined the columns most regularly used when pinpointing issues in ADLS.

###ActivityID
###HTTPStatusCode
###Path
###Query
###RequestStartTimeUtc
###UserAgent
###UserName
###LatencyMilliseconds
###StoreErrorCode
###Env_Cloud_Role