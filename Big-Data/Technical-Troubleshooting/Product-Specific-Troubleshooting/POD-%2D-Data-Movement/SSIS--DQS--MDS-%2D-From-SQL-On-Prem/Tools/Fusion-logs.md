[SSIS OneNotes](https://microsoft.sharepoint.com/teams/CSSSQLTeam/_layouts/15/Doc.aspx?sourcedoc={6c7764d5-4503-49cf-9dbf-a10b67236b61}&action=view&wd=target%28SSIS%20On-Prem%2FWorkflows.one%7C89652072-742c-415d-a2df-ad80f69b4182%2F.NET%20Fusion%20Logging%7Cb6dffa31-dfb3-4553-a4e8-763e32db5113%2F%29) 
Capture Assemblies used .NET 

Can you please enable Fusion logs by following the below steps?

Open registry editor on the SSIS server.
Go to HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Fusion
Add the below keys:

Add:

DWORD ForceLog and set its value to 1

DWORD LogFailures and set its value to 1

DWORD LogResourceBinds and set its value to 1

DWORD EnableLog set and set its value to 1

String LogPath and set the value to a folder for logs (e.g. C:\FusionLog\) (Make sure that you include the backslash after the folder name and that the Folder exists.)

 

