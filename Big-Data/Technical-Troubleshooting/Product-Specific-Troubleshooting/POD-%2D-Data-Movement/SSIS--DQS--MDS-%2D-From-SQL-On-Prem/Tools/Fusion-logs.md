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

 

