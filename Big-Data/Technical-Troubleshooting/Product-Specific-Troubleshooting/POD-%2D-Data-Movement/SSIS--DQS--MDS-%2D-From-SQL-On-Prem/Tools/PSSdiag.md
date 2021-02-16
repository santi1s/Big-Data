Steps to run the PSSdiag:

Please provide PSSDIAG results PSSDIAG data collection utility (microsoft.com) to gather performance information such as disk capacity, % CPU Utilization RAM Usage.  May be helpful when customer experiences different performance of SSIS in different environments.  Ex. If package is hung, waiting on SQL Server to respond.  Ex.  One machine processes slow and other machine is fast. If execute SQL task in SSIS verbose logs takes a long time on 1 machine and not the other. Engauge SQL Performance to assist customer to gather logs and analyze. 

File name:-pssd.zip

and follow these instructions to run it on the problematic database server . PSSDIAG is configured to collect profiler traces so you might see some bit of overhead when this tool is running.

1. Create a folder named PSSDIAG on your SQL server machine. This folder should be on a drive with plenty of space as diagnostic file collections can be quite large. If possible avoid using the same drive where SQL database files are stored.

2. Copy the pssdiag executive to the PSSDIAG folder. Open a command prompt (run as admin). Change the current directory to your PSSDIAG folder and run pssd.exe to extract its contents.

3. Start the load testing or make sure there is application load running in SQL Server before during the data collection.

4. From command prompt run “pssdiag.cmd” from pssdiag folder.

5. Once PSSDIAG displays the message, “PSSDIAG collection Started,” wait for about 15 minutes before you close the console.(reproduce the error)

6. Stop PSSDIAG by pressing CTRL+C one time and wait for the graceful shutdown

8. Give some time to the tool to close on its own .Do not abruptly close the command window or kill the diag from task manager. Once done an “Output” folder will be created under “PSSDiag” folder. *Zip* the entire “Output” folder

 