SYMPTOMS
Error may be login or access denied. 

Ex1. Connecting from local computer to access Server to access filesharing.  Does not work on NTLM.  Would need Kerberos.  Contact SQL Networking. 

Ex2. OLE DB Error code: 0x80040E4D. Description: "Login failed for user 'NT AUTHORITY\ANONYMOUS LOGON'.".


There are two possible reasons why this would fail:

1. One way to identify this issue is to login using remote desktop to SSIS server and then run it using SSMS there.  If that is sucessful then it probably is the a server double hop issue.

   The connection to the SQL Server is made over KERBEROS when connecting locally and NTLM when connecting remotely. You can test if you are running KERBEROS or NTLM by running the following statement.

   >SELECT auth_scheme FROM sys.dm_exec_connections WHERE session_id = @@spid ;

   If you get NTLM,verify that the SPNs are set correctly for the SQL Server instance.

   You can configure Kerberos and allow double-hop connections on the SSIS box.  The Microsoft Tech Community discusses this issue in more detail:
https://techcommunity.microsoft.com/t5/sql-server/understanding-kerberos-and-ntlm-authentication-in-sql-server/ba-p/383190 

   Another possible option is to define SQL Agent job on the SSIS server and then run the package using this job.

2.  **DELEGATIONS** The SQL Server service account does not have delegation permissions.

    The issue could be with the SPN configuration for SQL server in domain. 

    Need to allow delegation to Application servers in domain service account. Then reboot SQL server and everything.

https://techcommunity.microsoft.com/t5/sql-server/understanding-kerberos-and-ntlm-authentication-in-sql-server/ba-p/383190 
