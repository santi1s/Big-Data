[[_TOC_]]
#Overview
It is rare but sometime we have customer asking how they can use their other storage account on their ADLA.

## USQL using secondary storage account
ADLA can have multiple storage account sync to such as the screen shot below:
![image.png](/.attachments/image-73627cc8-d482-4b0e-ae98-aafb6352b776.png)


## Prerequisite 
###Sample file
You need your file/data (csv, text, json, etc)

###Absolute paths samples
- Data Lake Store Gen1 - adl://<DataLakeStorageAccountName>.azuredatalakestore.net:443/Samples/Data/SearchLog.tsv
- Storage accounts - wasb://<BlobContainerName>@<StorageAccountName>.blob.core.windows.net/Samples/Data/SearchLog.tsv

###Sample script
The script is use to run the job inside of ADLA. Copy and paste you sample script into ADLA "New job" tab on the left.  The below is a sample of a csv file copied from Gen1 to Gen2. 
@a =
    EXTRACT UserId          string,
            Region          string
    FROM "adl://dyadlsg1.azuredatalakestore.net/rawadlafile/adlaBook1.csv"
    USING Extractors.Csv(encoding: Encoding.[ASCII]);

OUTPUT @a
    TO "wasb://adla-usqljob@dyblobtest1.blob.core.windows.net/adlajobresult.csv"
    USING Outputters.Csv();


## Important documentation for more info
To use these other storage account you need to follow the doc below:
https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-u-sql-get-started
https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-get-started-cli#to-create-a-data-lake-analytics-job-script
https://docs.microsoft.com/en-us/u-sql/functions/operators/extractors/extractors-csv
