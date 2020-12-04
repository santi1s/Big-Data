## Process Monitor is an advanced monitoring tool for Windows that shows real-time File System, Registry and Process/Thread activity. It combines the features of two legacy Sysinternals utilities, Filemon and Regmon. Its uniquely powerful features make Process Monitor a core utility for system troubleshooting. comprehensive event properties such session IDs and user names, reliable process information, full thread stacks with integrated symbol support for each operation, simultaneous logging to a file, and much more.
## Note: It runs on Windows XP SP2 and higher and Windows 2003 SP1 and higher.


## Where do you get it from?

Download from www.sysinternals.com (redirects to http://technet.microsoft.com/en-us/sysinternals/bb896645).
Unzip into a folder.

	How to collect?

1.	Download the ProcMon tool from the following link:
https://docs.microsoft.com/en-us/sysinternals/downloads/procmon

2.	Open the ProcMon tool on the servers involved in the transaction

***NOTE: If the tool immediately starts capturing data, click File and uncheck Capture Events to stop collection. Then click the erase tool at the top of the tool to create a fresh log

 ![image.png](/.attachments/image-8e44ad91-4996-4354-895e-02cc8cc13e47.png)

3.	Click Options > Select Columns. Put a check by each attribute and click OK.
4.	Prepare to reproduce the issue
5.	To begin capturing trace events click File > Capture Events
6.	Reproduce the issue.
7.	To stop tracing click File > Capture Events.
8.	Save the trace file by clicking File > Save. Save the trace with the name of the machine it was collected on.
9.	Upload the trace file to the workspace provided.


## Additional Blogs:

http://blogs.technet.com/b/appv/archive/2008/01/24/process-monitor-hands-on-labs-and-examples.aspx

## Running ProcMon from Command Line
You can run ProcMon from Command Prompt using the following command:

Procmon /Quiet /BackingFile "D:\Tools\ProcMon\output.PML" /AcceptEULA /Quiet

After you have finished collecting the run Procmon /Terminate

The /Terminate tells the first instance to stop capturing, commit any outstanding data to the backing file and exit cleanly. The reason why we would have to run Procmon from command line because while running setup, you shouldn't (It's a Best Practice!) log into the passive nodes using Terminal Services or Console Mode. If you need to run ProcMon on the passive nodes, then you can run ProcMon using a Scheduled Task. Keep in mind that the ProcMon /Terminate needs to be called from the same session where you instantiated ProcMon to cleanly shutdown and commit the backing file. If this is NOT done, then the PML file sometimes cannot be opened with ProcMon. If you know for how long you need to run procmon, then you could put in a wait in a batch file with the Procmon commands. 

Example:
set PM=C:\sysint\procmon.exe
start %PM% /quiet /minimized /backingfile C:\temp\notepad.pml
%PM% /waitforidle
ping 127.0.0.1 -n 2 -w 1000 
ping 127.0.0.1 -n %1% -w 1000
%PM% /terminate
If you do not prefer the ping method to simulate waits, you can use the SLEEP utility available with Windows 2003 Resource Kit. This utility takes a parameter for milli-seconds to wait.
If you need to set filters for ProcMon, then run the ProcMon tool in GUI mode and set the Filters and save it. After that Exit ProcMon and run the above command from Command Line. 
For further help information, refer the ProcMon CHM Help File.
