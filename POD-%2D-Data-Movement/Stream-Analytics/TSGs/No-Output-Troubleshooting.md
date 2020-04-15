# General Troubleshooting 
_Details to come_
 
1. Check Azure Support Center
Review insights, if insights are not helpful provide feedback then proceed to step 2

2. Check the Logs using ASA Wizard
You'll need the resource ID, region, and investigation timeframe.

3. Ensure there is input, if there is no input there will be no output. If there is no input and the customer is unsure why please see No Input Troubleshooting

4. 

# By Input Adapter 

After completing the general troubleshooting if you're still unable to see input please review the input adapter specific troubleshooting options below: 

 
## Data Lake Storage Gen 1
- Ensure the customer has recently renewed authorization.
- Check the output path pattern: Ensure that the folders preceding the date/time parameters exist in the Data Lake.

##Azure SQL Database
- Ensure that the customer can connect to the SQL Database.
- Ensure that the SQL Database DTU Quota has not been reached.
- Check logs for connection, Data Conversion, Column does not exist, Duplicate Primary Key, and other errors.
_More Details to come_

##Blob Storage
_Details to come_

## Event Hub 
_Details to come_
 
##Power BI
- Make sure that the Power Bi has not reached any limit.
_More Details to come_

##Table Storage
_Details to come_

##Service Bus queues
_Details to come_

##Service Bus Topics
_Details to come_

##Azure CosmosDB
_Details to come_

##Azure Functions
- Check that execution time has not exceeded app limit
- Check that Functions do not have errors.
- Check for Function App Configuration limitations when reading in JSON as array
- Check that ASA can connect
_More Details to come_
