[[_TOC_]]

# What Is This Guide for?
This guide covers the basics of the Jarvis UI and using Jarvis to query for Azure Data Lake Store Gen 1.
It does not contain troubleshooting steps for specific situations. For troubleshooting guides, see  the TSG section!
This guide is meant to familiarize you with the tool and give you some reference points for using Jarvis to troubleshoot any ADLS issues.

_If you have any problems authenticating or do not have access to Jarvis - please reach out to your TA._

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
**Endpoint**
The Endpoint option in Jarvis is essentially the logs 'Server' we are pointing our query to in Jarvis.
For ADLS, you will use 'Diagnostics PROD'
![image.png](/.attachments/image-6ffd6171-e420-46ca-8b8d-6c267d6a6669.png)

**Namespace**
The Namespace option in Jarvis is essentially the logs 'Database' we are pointing our query to in Jarvis.
For ADLS, you will use 'AzureDataLake'
![image.png](/.attachments/image-94b98e07-da73-43a4-b19b-84a62814ae15.png)

**Events to Search**
The Events to Search option in Jarvis is essentially the logs 'Table' we are pointing our query to in Jarvis.
For ADLS, you will generally use 'CfeHttpEvent' though sometimes TSGs will point you to other Events to Search. If you are following a TSG, pay attention to what Events to Search, and which Logs columns you are looking for.
![image.png](/.attachments/image-255210b3-7487-4970-b031-2191f05f782f.png)

**Time Range**
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

The numerical range value allows you to search for a range of hours, days, or minutes.
It is suggested to limit your search to less than 24 hours, as queries of that size or larger often time out before they can complete.
![image.png](/.attachments/image-8b86644e-32dd-4c41-bf62-d3dbe34a2089.png)

**Scoping Conditions**
Scoping Conditions narrow the amount of data that Jarvis needs to search for, and allow you to be able to pull more data.
![image.png](/.attachments/image-42e18b8b-c10c-4577-87ff-8bc5cb071c32.png)

For Data Lake Store we normally use one of two values for Scoping Conditions:
1. Region - The Region of the Data Lake
2. Role - This is also based on the region of the data lake, however if you do not know what region your data lake is in, you can choose 'Role', add all roles in the drop down menu, and run a search on a more narrow timestamp. If you are able to find records for your data lake, look for the 'env_cloud_role' column. This will give you the role of the data lake and allow you to narrow your scoping conditions to a single role and therefore pull more data.

**Filtering Conditions**
Filtering Conditions allow you to filter the data resulting from the Time Range and Scoping conditions by column, and pull only rows that have column values you are looking for. You can choose a new filtering condition by picking the 'Field' dropdown and selecting your column.
![image.png](/.attachments/image-883fdba6-57d0-4fac-9f87-090dc862b436.png)
Most Common filtering Conditions for ADLS:
1. KiwiAccountName - This is the name of the data lake account. You should **always** filter by this value.
2. Path - The folder path in data lake that the request is against. Helps to narrow down calls to only a certain file or folder.
3. HTTPStatusCode - HTTP code response from the request. You can search for an error code like 404 or 403 to narrow down for errors.
4. UserName - If you are looking for the actions of a specific user, you can add 'UserName' to look for any actions they have taken. It is suggested to use 'contains' rather than == for user name.
5. Operation - You can look for operations, like delete, using this column.

**Link**
You can get a link to any specific Jarvis query you have run -- with all the above parameters included, using the 'Link' button in the top right of the Server Query Pane.
![image.png](/.attachments/image-19e114a5-62f1-40b3-8fda-737920be46bd.png)

You can add any one of those three links to your own notes, or provide those links to a teammate or the product team to allow them to run the same query.


## Logs Pane
The Logs Pane is the center pane in Jarvis, and after you run your query, it will contain all the logs retrieved. The view will be filtered by the results filters at the top of the page. Here you can view and filter the data, select what columns to see, organize data by column, or download the data.
![Jarvis Overview.jpg](/.attachments/Jarvis%20Overview-f4aa635b-7015-4583-82f7-198cd42688a4.jpg)


**The Logs**
The logs that result from your query will surface in the middle of the Logs Pane in Jarvis. They will be organized by column, the top row being the column names, and you can scroll to the right or left to see all data values.
If you click on any of the columns, it will sort the data by that column.
![image.png](/.attachments/image-40d091bb-eca4-48fd-83d9-8a68f36e0e46.png)

Note also, that when the query starts running, the initial columns are loaded into the logs display, but after that no more appear and there is a refresh button with a steadily increasing number.

This number is just the number of logs that have been pulled by the query but are not yet being displayed in the logs pane.
![image.png](/.attachments/image-084b2e01-9ed7-4378-991e-baf7e0b7aded.png)

Click this refresh button to populate the logs page with any outstanding logs.

**Download Results**
You can download all the logs you were able to gather with your query using the 'Download' button in the top left corner of the Logs Pane.
![image.png](/.attachments/image-b7ad9c21-630d-4bdb-b0d2-5e9d5e014461.png)
The data will be downloaded in a zipped .csv without any of your filtering or aggregate data.

**Number of Columns**
The Logs pane does not automatically display all columns when a query is run, so it may display too few columns for your needs, or too many. You can select to view all columns or just some specific columns using the Columns button at the bottom, left hand corner of the logs pane.
![image.png](/.attachments/image-11edef70-7b25-40f2-97fc-f698a3a32327.png)

Click on this button, select 'All Columns' or a subset of columns, then select 'Apply'

**Client Query/Results Filters**
At the top of the Logs pane is the Client Query, or Results Filter. This is usually empty, but you'll note if you click on a column header to sort by that column, an 'orderby' query will appear there.
![image.png](/.attachments/image-c800d1c1-de3a-4195-b8a2-9f19ab6bf995.png)
Also, any aggregates selected will also appear as a filtering query. You can add any of these queries by hand as well.
If you want to remove any of these filters, you can mouse over the number beside them and select the 'x'.

![image.png](/.attachments/image-1bd0c198-d3e7-4da0-b404-4ab80f562593.png)

## Aggregates Pane
The Aggregates Pane is the right-hand pane in Jarvis, and can be used to aggregate data in your query by column.
![Jarvis Overview.jpg](/.attachments/Jarvis%20Overview-01eeedbf-6a68-432e-8d7a-f36ca45ae7d9.jpg)

Add any aggregates by selecting the '+' button.
![image.png](/.attachments/image-5c74ca47-cff5-4c21-8755-e220ba00e168.png)

From there you can choose Count, Average, Max, Min, or Sum.
![image.png](/.attachments/image-cfefd97e-8b1f-49c1-b7a2-6d62e1eead1b.png)
```
Note: For the CfeHttpEvent, even the Latency columns are strings, not integers, so Sums or Averages won't work as you expect them to.
```
Then, by clicking 'Select' you can choose which column you wish to see aggregates for.
![image.png](/.attachments/image-9a6922c5-1c8b-4f29-87a0-179aedba2735.png)

After selecting the column, you can see results per each value type for the column.
![image.png](/.attachments/image-0de14a9a-a377-4b80-8a70-ed246d145239.png)

If you click on any one of these values, it will be added as a Client Query in the top section of the Logs pane, and all the displayed data will be filtered by that column.
![image.png](/.attachments/image-1d558196-23a3-4c2a-8d2f-e7ebb507fd32.png)

#Jarvis for ADLS Troubleshooting

Jarvis is a good frontline tool for diagnosting ADLS issues.
The CfeHttpEvent table is a table you can use to see all requests coming to the data lake, what the request was, what path it was on, how long it took, who ran it, when, and what the result was.

This is a good baseline for understand what is happening on the data lake, and if you are seeing expected behavior, or unexpected behavior.

This table will not tell you everything, however. It only tells you what requests came to the data lake and what happened to them. If  request isn't making it to the data lake at all, we may need to find out why using some other means. Or we may need to involve the product team to understand why we are seeing high latencies. If you have any questions about the results you are seeing (or not seeing) from Jarvis-- reach out to an SME on your team, your TA, or the product team to look more deeply into the issue.

##Standard Query for ADLS Gen 1
1. Go to https://jarvis-west.dc.ad.msft.net/logs/dgrep
2. Set Endpoint to 'Diagnostics PROD'
3. Set Namespace to 'AzureDataLake'
4. Set Events to search to 'CfeHttpEvent'
5. Set your Time Range to your known issue timestamp.
6. Under Scoping Conditions set 'Region' to the region of the data lake you are looking into.
7. Under Filtering conditions set 'KiwiAccountName' to the name of the data lake you are looking into.
8. Run the query by pressing the blue magnifying glass 'Run' button.
![image.png](/.attachments/image-41f0837f-9a1e-4308-b072-d540497011b5.png)

From this base query you can start looking at requests coming into the data lake and begin to narrow your query and more deeply understand what is going on.

##Providing Jarvis Information to Others
When providing Jarvis information to others, be that your teammates or the product team, two things will be important.
1. The Jarvis Link for your specific query, which you can obtain using the 'Link' button in the top right of the Server Query Pane.
![image.png](/.attachments/image-19e114a5-62f1-40b3-8fda-737920be46bd.png)
2. If there is a specific record you want them to look at, provide the value from the 'ActivityId' of that row. This ActivityID is unique to every record.

##Important Columns
Of course, all these columns contain important/useful information for troubleshooting data lake.
Below are outlined the columns most regularly used when pinpointing issues in ADLS.

**ActivityID**
This column is a unique ID for every request. This is helpful for narrowing down some error messages (which will include an activity ID) or for passing information to the product team or teammate to help them pinpoint a specific record to look at.

**HTTPStatusCode**
The HTTP response to the query/request represented by the row. Helpful for knowing if a request was successful or if it errored. 

_Common error codes for ADLS:_
403 - Authentication Error. A problem with permissions.
429 - Throttling. Too much data being written to the data lake and the customer is being throttled.
200/201 - successful
309 - Redirect - Normal. Not an issue.

**Path**
The folder path in the data lake that is being queried against. All folder paths are preceded with webhdfs/v1. Those are not customer folders. The folder / after that is the root, and anything following are child files/folders.

**Query**
The full query/request that was received by the data lake. Useful to see what exactly is occurring.

**RequestStartTimeUtc**
The time that ADLS received/began working on the request. Most accurate timestamp.

**UserAgent**
This is the Agent/Machine/Script that sent the request. Here you can see if the request came from the portal (you'll see something like Mozilla or Chrome), or from HD-Insight Spark or Hive, from Python, or from any number of other Agents.

**UserName**
The user that sent the request. This will be the AD authenticated username that sent the request to the data lake. 
Anything ending in "@SPI" is a service principal.

**LatencyMilliseconds**
Number of Milliseconds it took to run a request. Normally, these will be quite low. If you start seeing high values, check the data Ingress/Egress and see how much data was being moved. If there was high latency on small data, follow the TSG in the Product Group's One Note to Gather more information. [ADLS TSGs](https://microsoft.sharepoint.com/teams/ADLSGen1-CSSCollaboration/_layouts/15/Doc.aspx?sourcedoc=%7Bf47ad678-9d0c-4766-8a17-691ca6564b93%7D&action=edit&wd=target%28Supportability%20OneNote.one%7Cdffd0533-ef7f-4504-a41b-5e36641307b5%2FADLS%20Gen1%20Support%20Topics%5C%2FCommon%20Solutions%5C%2FScoping%20Questions%7Ca2c9949d-0899-43d4-9151-4466f73b4cd6%2F%29)

**StoreEgressSize/StoreIngressSize**
The size of the data moving into or out of the data lake.

**StoreErrorCode**
The ADLS-specific error code for any issue that has occurred on the Data Lake.
The ADLS PG has a list of the error codes in their one note: [ADLS Error Codes](https://microsoft.sharepoint.com/teams/ADLSGen1-CSSCollaboration/_layouts/15/Doc.aspx?sourcedoc={f47ad678-9d0c-4766-8a17-691ca6564b93}&action=edit&wd=target%28Supportability%20OneNote.one%7Cdffd0533-ef7f-4504-a41b-5e36641307b5%2FADLS%20Error%20Codes%7Cdd7079ee-8626-4134-8d01-b43ce634f386%2F%29)

**Env_Cloud_Role**
This is an internal name that aligns with the region the data lake is housed in. It can be used as a Scoping Condition to be able to pull more logs from Jarvis.

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
Narrow the time range you are searching or dd more filtering conditions to your query to pull down a smaller amount of data.