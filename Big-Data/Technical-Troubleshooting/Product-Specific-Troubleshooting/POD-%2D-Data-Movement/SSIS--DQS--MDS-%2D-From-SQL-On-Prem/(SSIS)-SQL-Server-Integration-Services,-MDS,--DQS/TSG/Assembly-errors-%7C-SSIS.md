There are many Assembly Errors that can happen.  I am trying to use this wiki to provide troubleshooting for case by case examples.

**CASE 1)** _Assembly ‘ISSERVER’ Was Not Found in the SQL Catalog of Database ‘SSISDB’._  This could be because the Folder was created but is empty or it was not created at all.

- Start by looking into SQL Server ERRORLOG log to see if there are mire details.

- EXAMPLE ERRORLOG "Failed during upgrade"

- Restart SQL Server from command using trace flag 902 as below via command prompt.  This will skip the upgrade at start to further troubleshoot issue.
     >NET START MSSQLServer /T902

- If you can connect, check SSIDDB to see if the Folder for the SSISDB Catalog exists and there are subfolders. 

- If the SSISDB folders are not empty, backup the folders and then recreate the catalog.
Catalog exist with empty folder, then,
    1. Take a backup of the existing SSISDB.
    2. Delete the existing SSISDB under Integration Services Catalogs
    3. Create a new catalog (password will be required)
    4. Then Remove the flag 902 and restart the SQL Service.
        > NET STOP MSSQLServer
        > NET START MSSQLServer

** CASE 2) ** Error: The binary code for the script is not found.

- Package Log:
Check if Cases File is Empty:Error: The binary code for the
script is not found. Please open the script in the designer
by clicking Edit Script button and make sure it builds
successfully.

   Check if Cases File is Empty:Error: CS2001 - Source file
'C:\Windows\TEMP
\.NETFramework,Version=v4.0.AssemblyAttributes.cs'
could not be found, CSC, 0, 0

- SQL server logs:
   01/28/2021 20:15:03,spid62,Unknown,Unsafe assembly 'microsoft.sqlserver.integrationservices.server<c/> version=13.0.0.0<c/> culture=neutral<c/> publickeytoken=89845dcd8080cc91<c/> processorarchitecture=msil' loaded into appdomain 2 (SSISDB.dbo[runtime].1).

**RESOLUTION**
​Check the value for the run_time column

If it's set to 1, you can try the following to disable strict security which would allow an unsafe assembly to execute:

exec sp_configure 'show advanced options', 1
reconfigure;
exec sp_configure 'clr strict security',0