Ex. Connecting from local computer to access Server to access filesharing.  Does not work on NTLM.  Would need Kerberos.  Contact SQL Networking. 

Error may be login or access denied.

There are two possible reasons why this would fail:

1) Comparing the working captures to the non working capture. Does the app work sometimes using Kerberos for authentication and sometimes using NTLM?

   The connection to the SQL Server is made over KERBEROS when connecting locally and NTLM when connecting remotely. You can test if you are running KERBEROS or NTLM by running the following statement.

   >SELECT auth_scheme FROM sys.dm_exec_connections WHERE session_id = @@spid ;

   If you get NTLM,verify that the SPNs are set correctly for the SQL Server instance.

2.  **DELEGATIONS** The SQL Server service account does not have delegation permissions.

    The issue could be with the SPN configuration for SQL server in domain. 

    Need to allow delegation to Application servers in domain service account. Then reboot SQL server and everything.

https://techcommunity.microsoft.com/t5/sql-server/understanding-kerberos-and-ntlm-authentication-in-sql-server/ba-p/383190 
