1.  Download Visual Studio 2015 Enterprise with update 3
https://my.visualstudio.com/Downloads/Featured

2. Download and install the Latest Data Lake tools for CSS (these are different than the public tools).
If you are connected to corp-net, put the below address into your file explorer:

`\\cosbj-01\public\Kona\DRI\2017-06` 
	
3. Get Started with your first U-SQL Script: https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-get-started-portal

4. After running this script, grab the job url on the lower, left-hand side of the page. Open Visual Studio 2015. Go to tools, data lake, Job View and enter your job URL. You should be able to see your job details here! This is how we look at customer jobs too.Your job URL should look like this: https://whhenderintadla.azuredatalakeanalytics.net/Jobs/0387eec5-ae6f-4a1e-ada6-77d03f246d6a?api-version=2015-10-01-previewIf you're having an issue with "invalid job url" make sure you have Jobs and the api version on your URL:https://whhenderintadla.azuredatalakeanalytics.net/Jobs/0387eec5-ae6f-4a1e-ada6-77d03f246d6a?api-version=2015-10-01-preview
	
5. Go through stairway to U-SQL to get the basics on the U-SQL language. (Though please note, for specifics, especially on limitations of U-SQL don't use this as a reference. It's a great starting point, but is not up to date on specifics): https://www.sqlservercentral.com/steps/stairway-to-u-sql-level-1-introduction-to-u-sql-and-azure-data-lakes
	
6. Familiarize yourself with performance best practices on ADLS: https://docs.microsoft.com/en-us/azure/data-lake-store/data-lake-store-performance-tuning-guidance
	
7. Use Visual Studio to submit a basic job: https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-data-lake-tools-get-started (but don't install the tools. You installed the tools in step 2)

8. Familiarize yourself with the U-SQL language reference: https://docs.microsoft.com/en-us/u-sql/