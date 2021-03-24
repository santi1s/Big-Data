**ERROR**
SSIS package fails with error cancelled when writing from PostgreSQL to SQL DB.
 
**Preliminary Data:**
- Data Source originates from PostgreSQL Database is UTF-8 using PostgreSQL ANSI driver
- The Query is provided here: SELECT * from elliedb.customfield where dcmodifiedutc >= xxxxxxx  and <= xxxxxxx
- The input and output map to the same columns
- Output is to SQL Database ANSII encoded format 
- Data in PostgreSQL is UTF-8 encoded format
- Data Sources connect successfully
- logging level logs are attached to the ticket but there are no errors reported.

**CAUSE**
UTF-8 is not compatible with SQL Database ANSII encoded format. 
 
**RESOLUTION**
It is recommended to use the PostgreSQL Unicode ODBC driver when the data encoding is UTF-8, or use the ANSI ODBC driver with the utf-8 client_encoding, then insert the data into SQL Server as Unicode with a DB properly set up to accept Unicode.

Customer can add a Data Conversion Data Flow to identify which columns to be converted to the correct format. PERFORMANCE NOTE:  If there are many tables with columns and it may be too slow of a processes to use this method.
 
Another option to reduce performance hit is to sanitize data of UTF-8 characters that are causing these issues before writing to PostgreSQL Database.
 
Customer can also increase the maximum error count to push data through without failed rows for this particular case until resolved.  If the error happens at the conversion step, then you can use Error Handling for the Data to capture row level errors out to a file. Online support Guide for Error Handling is available here [Error Handling in Data - SQL Server Integration Services (SSIS) | Microsoft Docs](https://docs.microsoft.com/en-us/sql/integration-services/data-flow/error-handling-in-data?view=sql-server-ver15).  After the data with errors is written to the output error file, we can investigate what data is causing the errors.  If we can then sanitize the data or add those columns to be converted.  