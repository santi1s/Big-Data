# Executing a simple SSIS package in Azure SSIS IR QuickStart
## Prerequisites
- Have Visual Studio 2017 with [Integration Services pack](https://docs.microsoft.com/en-us/sql/ssdt/download-sql-server-data-tools-ssdt) and [Azure pack](https://docs.microsoft.com/en-us/sql/integration-services/azure-feature-pack-for-integration-services-ssis?view=sql-server-2017) installed
- Create the addresses.csv file used in this example (contents of file will be at [the end of this document](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/303022/Case-handling-SSIS-VNET-SHIR-Escalate-to-PG-on-First-Day-when-you-get?anchor=addresses.csv-file-contents))


## Steps:
### ADF Setup:
Create a Data Factory (v2) and Create a new Azure SSIS Integration Runtime

![image.png](/.attachments/image-8b761897-38dd-44ce-bd0f-c3a9dbdadf2f.png)

Go through a default SSIS IR setup.  Point it to the database where you’ll be hosting your SSISDB (my example here is an Azure SQL Database)

![image.png](/.attachments/image-74784573-9f2a-4bcc-8f44-2056a6711417.png) ![image.png](/.attachments/image-985908c7-5b76-4586-8140-db809e7161cb.png)

Then “next next finish” through the rest of the wizard.

### Building and Deploying the SSIS Package

Launch Visual Studio 2017 and Ctrl-Shift-N to create a new Project

![image.png](/.attachments/image-68839373-134a-4405-816c-60f898ebf618.png)

Select the “Integration Services Project (Azure-Enabled)”, give it a name, and hit OK

It will prompt you to connect to SSIS in Azure Data Factory now.  Hit Yes (you can set this up later, too)
Select your relevant info from the dropdowns:

![image.png](/.attachments/image-959de6d9-d309-49f0-a1fe-7fb48dda8eae.png)

Pick a Storage account to store the packages in Azure, and then click Connect
You’re now in the SSIS Design View in Visual Studio.  Click the Data Flow tab at the top and then “click here to add a new data flow task”

![image.png](/.attachments/image-f16414a1-9379-4ba4-bb15-eb45efd691ce.png)

I’m using Azure Blob as a source and destination here as they’re the easiest to work with.  Drag an Azure Blob Source and Azure Blob Destination object into the main window.  Click on the Source, then click and drag the blue arrow to the destination

![image.png](/.attachments/image-173664a5-9bd1-4db6-ac0e-87372ba73899.png)

This is the same as defining a source dataset and destination dataset in a copy activity.

![image.png](/.attachments/image-63c33c06-9da8-4cc9-ab28-de99fb04dc33.png)

The next step is to set up the connection to the blob storage and point it to the files we want to copy (Create the linked service and datasets).  Note the red circle with an X on both – that means something needs to be fixed with them.  Double click the source object to bring up its properties.
Since we haven’t defined any connection managers (linked service) for our Blob storage yet, click New… in this screen

![image.png](/.attachments/image-ae1f64e1-d150-40ee-98a7-001d071545e3.png)

Locate a blob storage account in the Azure portal and go to the Access keys section.  Pull the storage account name and one of the 2 keys listed there and fill out those entries in the connection manager.  Feel free to test connection to validate this.  Note the connection will be coming from your computer so if there’s a firewall blocking your IP, this will fail

![image.png](/.attachments/image-af3a158a-3c8a-44e3-9213-ffd2a82ff180.png)

Set up the Azure Blob Source (like a dataset) to fit your csv file (in my case I had to uncheck column names in the first data row) and then hit OK

![image.png](/.attachments/image-48c2e9ea-eee5-4e41-b038-dc7873229838.png)

I’m going to add column headers so this package actually accomplishes something, so click over to the Columns settings and manually enter your column headers.  These are the names I’d give my data’s columns and this will be unique for every dataset.  Click OK

![image.png](/.attachments/image-fae2a628-70f2-40f7-825c-a8486f979460.png)

You’ll notice the red circle with an X is now gone from Azure Blob Source.  Double click Azure Blob Destination and do the same thing except this time, you can select the connection manager from the dropdown.  Give it a container and blob name.  I’m leaving “Column names in the first data row” checked and to write out the names of the columns I gave in the source.

![image.png](/.attachments/image-cb94fb4c-7f2c-4438-a453-5e6e8ad7e58e.png)

Clicking over to the mapping page to verify the headers are coming through, then click OK

![image.png](/.attachments/image-b5145a4d-30c7-4afa-9302-4c48913fddfa.png)

Your package and Project is now built.  Let’s build it and deploy it to Azure.  First make sure it builds – Right-click the project name in the Solution Explorer and choose Build

![image.png](/.attachments/image-708dbe77-33d1-4068-8d59-1072c26e6de8.png)

Assuming this completed without errors, time to deploy.  If you didn’t connect to an Azure SSIS IR originally, now is the time to do it.  Right-Click the project, select the SSIS in Azure Data Factory menu, Connect to SSIS in ADF, then follow the steps above.  If you did this when you created the project, go ahead and deploy it.  Right-click your project and click Deploy

![image.png](/.attachments/image-aa4bd306-ce26-4bfc-912e-9685a9ce1347.png)

Select SSIS in ADF

![image.png](/.attachments/image-21116552-6a8b-4dae-8c58-2579c1488956.png)

Next, then input the SQL server information you used when you set up the SSIS IR and click Connect to verify the connection.  Click Browse, create a New Folder, and name it

![image.png](/.attachments/image-d3ae03d9-0de3-4ea5-9e30-6f836e44883b.png)

![image.png](/.attachments/image-2845e536-724f-445a-bb6b-6af0d3eab36b.png)

![image.png](/.attachments/image-bc7a0389-9e7a-44eb-ac8e-011256c3a541.png)

![image.png](/.attachments/image-80a4c256-97c8-44f7-b948-80cd0d220990.png)

Your package has now been created and deployed to the cloud.  Let’s execute it!

### Executing your SSIS Package

Back in ADF, create a new pipeline and drag out an Execute SSIS Package activity then go to Settings, choose your IR, then the package we just deployed (you might have to hit Refresh on the folder)

![image.png](/.attachments/image-d226e736-2a09-40e5-9d9a-79d4a43fd4e1.png)

Fire up a debug run or deploy and trigger this and pat yourself on the back! You just created a completely Azure based solution to add headers to a CSV file through SSIS in ADF!  Don’t forget to stop your SSIS IR.  Those things are expensive!


### addresses.csv file contents

John,Doe,120 jefferson st.,Riverside, NJ, 08075
Jack,McGinnis,220 hobo Av.,Phila, PA,09119