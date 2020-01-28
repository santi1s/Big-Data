[[_TOC_]]


# What is this Guide For?
This guide covers the basics of the Jarvis UI and using Jarvis to query for Azure Data Lake Store specifically.
It does not contain troubleshooting steps for specific situations. For troubleshooting guides, see  the TSG section!
This guide is meant to familiarize you with the tool and give you some reference points for using Jarvis to troubleshoot ADLS issues.
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
The Namespace option in Jarvis is essentially the logs 'Database' we our pointing our query to in Jarvis.
For ADLS, you will use 'AzureDataLake'
![image.png](/.attachments/image-94b98e07-da73-43a4-b19b-84a62814ae15.png)

### Events to Search
### Time Range
### Scoping Conditions
### Filtering Conditions
### Link
## Logs Pane
The Logs Pane is the center pane in Jarvis, and after you run your query, it will contain all the logs retrieved. The view will be filtered by the results filters at the top of the page. Here you can view and filter the data, select what columns to see, organize data by column, or download the data.
![Jarvis Overview.jpg](/.attachments/Jarvis%20Overview-f4aa635b-7015-4583-82f7-198cd42688a4.jpg)

### The Logs
### Number of Columns
### Results Filters
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