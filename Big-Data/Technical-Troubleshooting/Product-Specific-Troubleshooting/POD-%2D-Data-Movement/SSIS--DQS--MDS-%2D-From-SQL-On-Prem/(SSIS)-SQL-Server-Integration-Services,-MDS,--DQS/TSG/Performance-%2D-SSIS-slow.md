 
- Please provide PSSDIAG results PSSDIAG data collection utility (microsoft.com) to gather performance information such as disk capacity, % CPU Utilization RAM Usage

   PSSDIAG is configured to collect profiler traces so you might see some bit of overhead when this tool is running.

1. Create a folder named PSSDIAG on your SQL server machine. This folder should be on a drive with plenty of space as diagnostic file collections can be quite large. If possible avoid using the same drive where SQL database files are stored.

1. Copy the pssdiag executive to the PSSDIAG folder. Open a command prompt (run as admin). Change the current directory to your PSSDIAG folder and run pssd.exe to extract its contents.

1. Start the load testing or make sure there is application load running in SQL Server before during the data collection.

1. From command prompt run “pssdiag.cmd” from pssdiag folder.

1. Once PSSDIAG displays the message, “PSSDIAG collection Started,” wait for about 15 minutes before you close the console.(reproduce the error)

1. Stop PSSDIAG by pressing CTRL+C one time and wait for the graceful shutdown

1. Give some time to the tool to close on its own .Do not abruptly close the command window or kill the diag from task manager. Once done an “Output” folder will be created under “PSSDiag” folder. Zip the entire “Output” folder

- Find long running SQL Queries
SELECT sqltext.TEXT,
req.session_id,
req.status,
req.start_time,
req.command,
req.cpu_time,
req.total_elapsed_time
FROM sys.dm_exec_requests req
CROSS APPLY sys.dm_exec_sql_text(sql_handle) AS sqltext 


- Review SSIS Configuration Optimization for performance:
1. Ensure SQL login has BULK DATA permission, else data load will be very slow. Also check that the target database uses the Simple or Bulk Logged recovery model.
1. Avoid sort and merge components on large data - once they start swapping to disk the performance gutters.
1. Source sorted input data (according to the target table's primary key), and disable non-clustered indexes on target table, set MaximumInsertCommitSize to 0 on the destination component. This bypasses TempDB and log altogether.
1. If you cannot meet requirements for 3, then simply set MaximumInsertCommitSize to the same size as the data flow's DefaultMaxBufferRows property.

