https://docs.microsoft.com/en-us/azure/stream-analytics/sql-database-output

**Problem Statement**
Issue: Cannot load an output (SQL Server VM - Iaas DB) using ASA set up.
![image.png](/.attachments/image-d2bf567f-4b33-45db-b9bf-6df427052978.png)

**MITIGATION**

1) Does ASA Output Server Name have correct configuration (servername,port) ie. 3342.   For SQL Managed Instance, it is required to specify the port 3342. 
2) Does ASA Output Server Name have the correct table name where the output is written? The table name is case-sensitive. 

Can open collab to review the SQL Cert & Network config is properly configured.

3) Verify if the customer has the SSL Certificate installed in SQL Server Configuration Manager as requested?

4) Verify SQL Server opened TCP/3342 port 

5) Verify SQL Server TLS 1.2 is enabled

6) Remember to restart the Server after any changes are made

7) If Errors, review Event System Log on Server

8) If there is still an error related to SSL cert, please confirm if the customer us able to successfully run the ASA job despite the error in the test connection and open an ICM with PG

**NOTES**:

Enable encrypted connections - SQL Server | Microsoft Docs Follow the steps in “To provision (install) a certificate on the server” sections.

For SQL 2016 , put the certificate’s thumbprint in the registry key mentioned in the “Wildcard Certificates” section. . A fix was put into SQL 2019 , so this step is not necessary.

https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/enable-encrypted-connections-to-the-database-engine?view=sql-server-2017#single-server

https://docs.microsoft.com/en-us/sql/database-engine/configure-windows/manage-certificates?view=sql-server-2017