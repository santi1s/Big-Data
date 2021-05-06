**OData Connector support guide:** [OData Connection Manager - SQL Server Integration Services (SSIS) | Microsoft Docs](https://www.mssqltips.com/sqlservertip/3220/using-the-odata-source-in-sql-server-integration-services/) 

**Configuration reference article** : [Using the OData Source in SSIS (mssqltips.com)](https://www.mssqltips.com/sqlservertip/3220/using-the-odata-source-in-sql-server-integration-services/)

**Example Error:**
error : Unable to load collection. Cannot open this connection.

**Scoping**
Gather some additional details:
1) SSIS Verbose Logs during the time of this issue
2) Are you using the correct OData Source installation for your version of SQL Server?
3) Are you using the OData Source 32 or 64 bit install?
4) Is your package running as 32bit or 64bit?
5) Does the connection manager connect such that you can see the OData Source filling the "Collection" dropdown with a list from the Sharepoint site?
6) What is the Service document location path format that you are using?  Please provide a screenshot of the Configuration Manager properties.
7) Does the OData Connection Manager Authenticate when using "Test Connection"? If not,
   - Are you using Windows Auth or User name and Password to authenticate? 
   - Have you confirmed that this Authenticated user is currently able to access the file?  What are the permissions on the network and folder to the file?
8) Please provide the OData Connection Manager connection information screenshot
![image.png](/.attachments/image-009d10f1-4a57-456f-8a43-9879fad150cc.png)
9) Can you perform a Network Trace using Netmon during the time of this issue?