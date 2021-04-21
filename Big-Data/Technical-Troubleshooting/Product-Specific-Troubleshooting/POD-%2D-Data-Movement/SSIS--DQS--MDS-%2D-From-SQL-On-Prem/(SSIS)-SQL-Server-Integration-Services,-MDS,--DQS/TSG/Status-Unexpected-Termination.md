1) You have installed new packet for SQL Server CVE 2021-1636:
![sql-server.png](/.attachments/sql-server-89096437-ff04-41c7-9935-b9a57c689290.png)

2) We can run your package successfully under catalog, but when you run via Agent Job, it shows “unexpected termination” error, The package is attempting to configure from SQL Server using the configuration string...:
![unexpected-termination.png](/.attachments/unexpected-termination-1cef5e20-979f-4673-b8fe-a0bb56fb2b6f.png)

3) We changed “Run As” to SQL Server Agent proxy account, then you can run package via Agent Job.

4) You want to run package using proxy account, we checked credentials and permission, after adding “db-owner” role to your role in SSISDB, it can run package now:
![add=db_owner.png](/.attachments/add=db_owner-d7d35734-cab4-4490-9d99-33b1bb9d1bba.png)