The SQL-Agent job will always run the package using Windows authentication by default as seen below:
![image.png](/.attachments/image-a808d30c-d9be-41be-978d-737967d71aec.png)
SQL Server Authentication only authenticates to SQL Database.

If you want to use an Active Directory account to authenticate the package run, the SQL-Agent will need to use the Proxy account configured with an Active Directory.   When using a Proxy, you do not need to modify the service account access for SQL Agent.  I have provided a support document for setting up the SQL Server Agent with a Proxy:  

[Create a SQL Server Agent Proxy - SQL Server Agent | Microsoft Docs](https://docs.microsoft.com/en-us/sql/ssms/agent/create-a-sql-server-agent-proxy?view=sql-server-ver15)

**Other Related Topics**
Request Connection Manager Connection configuration


