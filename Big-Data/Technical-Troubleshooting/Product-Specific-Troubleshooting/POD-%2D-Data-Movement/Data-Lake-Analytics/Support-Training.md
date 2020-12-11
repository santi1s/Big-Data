1.  Download Visual Studio 2017 or 2019
https://my.visualstudio.com/Downloads/Featured

2. Install Data Lake and Stream Analytics Tools
https://marketplace.visualstudio.com/items?itemName=ADLTools.AzureDataLakeandStreamAnalyticsTools

**Step 2 is all your customers will need. Step 3 is for Internal Support**

3. Download and install the Latest Data Lake tools for CSS (these are different than the public tools).
If you are connected to corp-net, put the below address into your file explorer:

`\\cosbj-01\public\2.5.1000.6\Microsoft.Cosmos.ScopeStudio.vsix`

If the installer failed for any reason, need to click on 'show more detail' save and share the logs to PG (Hao Zhang) 
If you can view the error/failed logs then use this link on your window file explore %AppData%\Microsoft\ScopeStudio\log

Or use the manual downlaod on the below:
https://aad.cosmos08.osdinfra.net/File/Download/cosmos/cosmos.clientTools/public/CosmosClientTools/ScopeStudio/Stable/Microsoft.Cosmos.ScopeStudio.vsix

This takes a little while to install. The "Initializing" will spin for about 7 minutes, then it will ask if you want to allow it to make updates to your computer. Then it will spin for about 7 minutes more before asking what versions of VS you want to install for.
	
4. Get Started with your first U-SQL Script: https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-get-started-portal

4. After running this script, grab the job url on the lower, left-hand side of the page. Open Visual Studio. Go to tools, data lake, Job View and enter your job URL. You should be able to see your job details here! This is how we look at customer jobs too.

5. Check all the jobs in your ADLA account by opening Visual Studio, going to "Server Explorer" Clicking Data Lake Analytics, and clicking your account, then 'Jobs'
You can do the same for a customer account by right-clicking "Data Lake Analytics" and selecting "Add Account for DRI"
	
5. Go through stairway to U-SQL to get the basics on the U-SQL language. (Though please note, for specifics, especially on limitations of U-SQL don't use this as a reference. It's a great starting point, but is not up to date on specifics): https://www.sqlservercentral.com/steps/stairway-to-u-sql-level-1-introduction-to-u-sql-and-azure-data-lakes
	
6. Familiarize yourself with performance best practices on ADLS: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-performance-tuning-guidance
	
7. Use Visual Studio to submit a basic job: https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-data-lake-tools-get-started (but don't install the tools. You installed the tools in step 2)

8. Familiarize yourself with the U-SQL language reference: https://docs.microsoft.com/en-us/u-sql/