EXAMPLE Question:
SSIS Packages are not able to copy generated files into File server


1) Is the source and destination in the same Network?

2) What is the Environment (On-Prem or Azure Cloud)?

3) Is the port open (1433)?

3) Architecture of the Pipeline. What server are the input from (source)? What server is the SSIS package from? What server is the destination of the files?

4) What component are they using to copy the file?  File System Task, Script Task, FTP (if on different network maybe)

5) What are the User access to folders and files (if exists already)

6) Look deeper into the activity that they are using to connect...how is it configured are they using the UNC Path?

7) Dig in deeper into the SSIS logs

8) Use a tool to further investigate (netmon, procmon, fiddler)

