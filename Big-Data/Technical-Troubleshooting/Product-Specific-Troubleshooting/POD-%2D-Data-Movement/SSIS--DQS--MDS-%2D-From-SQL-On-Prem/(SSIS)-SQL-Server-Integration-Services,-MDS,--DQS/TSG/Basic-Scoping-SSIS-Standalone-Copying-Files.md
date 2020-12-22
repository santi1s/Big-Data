**EXAMPLE Question:**
SSIS Packages are not able to copy generated files into File server


**EXAMPLE SCOPING QUESTIONS**
1) Is the source and destination in the same Network?

2) What is the Environment (On-Prem or Azure Cloud, 32 bit or 64 bit OS and SSIS, Version of SQL Server & SSIS Package version (version should be the same), is it scaled out)?

3) Network.  Is the port open (1433)? **Note:** Scaled out environment would need additional scoping for other ports too ie. 8391, and correctly installed SSL Certificates.

4) Architecture of the Pipeline. What server & connector are the input from (source)? What server is the SSIS package from? What server and connector is the destination of the files?

5) What activity are they using to copy the file?  File System Task, Script Task, FTP (if on different network maybe), Component Task...

6) What are the User access to folders and files (if exists already).  Ex. Package Execution using SSISDB or SQL Server Agent or 3rd party custom application or VSDT will all have different user agents.  Does one user work but not others? Or do all users not connect?

7) Look deeper into the activity that they are using to connect...how is it configured are they using the UNC Path?

8) Dig in deeper into the SSIS logs

9) Use a tool to further investigate (netmon, procmon, fiddler)

   a) **Netmon** for monitoring the network connectivity.  This would not be needed if the copy file is using a shared drive unless the shared drive is configured to use a TLS connection.

   b) **Procmon** will monitor the file system and process/thread activity.  This could be helpful when trouble shooting connecting to a shared drive or if there may be capacity issues or zombie processes.  This could also be helpful when determining what version of the deployment wizard is being used.

   c) **Fiddler** is similar to Netmon, but is limited to HTTP requests.

**Example Solution:**
Permissions issue accessing the file on the network share:

When you start the execution of a SSIS package from SSISDB, this will start in background the ISServerExec.exe using the Login credentials. You must check that the Windows user, with which you are logged in on the SQL Server instance, has access on the network share.

You may still receive this error message, despite the fact that the user has full permissions on the network share, when you are connected remotely to the SQL Server instance. In this situation the SQL Server service account is not able to delegate the windows user. On the server where the share is located, you will see an entry in the Security event log:

An account was successfully logged on.

Subject:
 Security ID:  NULL SID
 Account Name:  -
 Account Domain:  -
 Logon ID:  0x0

Logon Type:   3

Impersonation Level:  Impersonation

New Logon:
 Security ID:  <domain>\<SQL Server hostname>$
 Account Name:  <SQL Server hostname>$
 Account Domain:  <domain>
 Logon ID:  0x2435C7
 Logon GUID:  {00000000-0000-0000-0000-000000000000}

Process Information:
 Process ID:  0x0
 Process Name:  -

Network Information:
 Workstation Name: <SQL Server hostname>
 Source Network Address: -
 Source Port:  -

Detailed Authentication Information:
 Logon Process:  NtLmSsp 
 Authentication Package: NTLM
 Transited Services: -
 Package Name (NTLM only): NTLM V2
 Key Length:  128

This event is generated when a logon session is created. It is generated on the computer that was accessed.

The subject fields indicate the account on the local system which requested the logon. This is most commonly a service such as the Server service, or a local process such as Winlogon.exe or Services.exe.

The logon type field indicates the kind of logon that occurred. The most common types are 2 (interactive) and 3 (network).

The New Logon fields indicate the account for whom the new logon was created, i.e. the account that was logged on.

The network fields indicate where a remote logon request originated. Workstation name is not always available and may be left blank in some cases.

The impersonation level field indicates the extent to which a process in the logon session can impersonate.

The authentication information fields provide detailed information about this specific logon request.
 - Logon GUID is a unique identifier that can be used to correlate this event with a KDC event.
 - Transited services indicate which intermediate services have participated in this logon request.
 - Package name indicates which sub-protocol was used among the NTLM protocols.
 - Key length indicates the length of the generated session key. This will be 0 if no session key was requested.

There are two possible reasons why this would fail:
Comparing the working captures to the non working capture. Does the app work sometimes using Kerberos for authentication and sometimes using NTLM?  

1. The connection to the SQL Server is made over KERBEROS when connecting locally and NTLM when connecting remotely. You can test if you are running KERBEROS or NTLM by running the following statement.  

SELECT auth_scheme FROM sys.dm_exec_connections WHERE session_id = @@spid ;

If you get NTLM,verify that the SPNs are set correctly for the SQL Server instance.

2. The SQL Server service account does not have delegation permissions.  The issue was with the SPN configuration for SQL server in domain. Also had to allow delegation to Application servers in domain service account. Then had to reboot SQL server and everything worked fine. 

https://techcommunity.microsoft.com/t5/sql-server/understanding-kerberos-and-ntlm-authentication-in-sql-server/ba-p/383190
