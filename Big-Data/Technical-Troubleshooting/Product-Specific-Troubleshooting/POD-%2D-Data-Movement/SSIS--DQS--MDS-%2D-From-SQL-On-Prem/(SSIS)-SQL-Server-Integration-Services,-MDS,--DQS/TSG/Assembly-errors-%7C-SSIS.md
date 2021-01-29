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

