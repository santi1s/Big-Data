- Use Task Manager to review Processes CPU, Memory, Threads. 

- Please provide PSSDIAG results PSSDIAG data collection utility (microsoft.com) to gather performance information for SQL Server Engine to compare package performing different in different environments.

   PSSDIAG is configured to collect profiler traces so you might see some bit of overhead when this tool is running.  See Tools section here: https://supportability.visualstudio.com/Big%20Data/_wiki/wikis/Big-Data.wiki/445330/PSSdiag


- Find long running SQL Queries
>SELECT sqltext.TEXT,
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

