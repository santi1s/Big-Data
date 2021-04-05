- Use Task Manager to review Processes CPU, Memory, Threads. 

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

You may want to reconsider reducing the retention period in the case there are memory problems.  When an SSIS package is running slower than usual, an administrator or SSIS developer might want to figure out the part of the package that is causing it to run slowly. An administrator might also want to build a monitoring mechanism (e.g. a SQL Agent job) that alerts him/her whenever packages that have been deployed to the SSIS catalog are running slower than usual.
In order to obtain performance-related information for packages that have been deployed to the SSIS catalog, you will need to make use of the Performance or Verbose Logging level.

Note: In the Verbose level, besides capturing performance related information, it might also log other messages which might not be useful in performance troubleshooting. Consider using the Performance Logging Level if you want error, warning, and performance information to be captured for packages that have been deployed to the SSIS catalog. The Performance Logging level provides a good balance between having sufficient information for troubleshooting a wide set of SSIS package issues (e.g. package failures, performance issues) and having a performance impact to the package (due to the information that gets logged).
You can make use of the following public views to identify the component (and phase) for a SSIS package performance issue.
catalog.executions
catalog.executable_statistics
catalog.executables
catalog.execution_component_phases
catalog.execution_component_phases

The following example shows how you can make use of T-SQL to identify the package executions that might have performance issues. Given a package, we first identify all the package executions that are successful (i.e. status = 7).

use SSISDB
declare @foldername nvarchar(260)
declare @projectname nvarchar(260)
declare @packagename nvarchar(260)
set @foldername = 'Folder1'
set @projectname = 'Project1'
set @packagename = 'Dim_DCVendor.dtsx'
DECLARE @ExecIds table(execution_id bigint);
insert into @ExecIds

SELECT execution_id
FROM catalog.executions
WHERE folder_name = @foldername
AND project_name = @projectname
AND package_name = @packagename
AND status = 7

From these successful executions, we identify the tasks (and their corresponding execution ID). We order the results, in descending order), by the time spent in the execution.

SELECT es.execution_id, e.executable_name, ES.execution_duration
FROM catalog.executable_statistics es, catalog.executables e
WHERE
es.executable_id = e.executable_id AND
es.execution_id = e.execution_id AND
es.execution_id in (select * from @ExecIds)
ORDER BY e.executable_name,es.execution_duration DESC;

In order to identify the tasks that are taking longer than usual, we first compute the average and standard deviation for the duration spent by each task. In the query, we define a “slower than usual” task as one whose duration is greater than average + standard deviation (i.e. es.execution_duration > (AvgDuration.avg_duration + AvgDuration.stddev))

With AverageExecDudration As (
select executable_name, avg(es.execution_duration) as avg_duration,STDEV(es.execution_duration) as stddev
from catalog.executable_statistics es, catalog.executables e
where
es.executable_id = e.executable_id AND
es.execution_id = e.execution_id AND
es.execution_id in (select * from @ExecIds)
group by e.executable_name
)
select es.execution_id, e.executable_name, ES.execution_duration, AvgDuration.avg_duration, AvgDuration.stddev
from catalog.executable_statistics es, catalog.executables e,
AverageExecDudration AvgDuration
where
es.executable_id = e.executable_id AND
es.execution_id = e.execution_id AND
es.execution_id in (select * from @ExecIds) AND
e.executable_name = AvgDuration.executable_name AND
es.execution_duration > (AvgDuration.avg_duration + AvgDuration.stddev)
order by es.execution_duration desc

From the results of the query, we can identify all the “slower than usual” tasks. Suppose the name of the task is [DFT Load DC Vendor] , and its corresponding ID is 188 . We zoom into this specific execution, and identify the time spent in each phase of the data flow task.

declare @probExec bigint
set @probExec = 188


-- Identify the component’s total and active time
select package_name, task_name, subcomponent_name, execution_path,
SUM(DATEDIFF(ms,start_time,end_time)) as active_time,
DATEDIFF(ms,min(start_time), max(end_time)) as total_time
from catalog.execution_component_phases
where execution_id = @probExec
group by package_name, task_name, subcomponent_name, execution_path
order by active_time desc

declare @component_name nvarchar(1024)
set @component_name = 'DFT Load DC Vendor'

-- See the breakdown of the component by phases
select package_name, task_name, subcomponent_name, execution_path,phase,
SUM(DATEDIFF(ms,start_time,end_time)) as active_time,
DATEDIFF(ms,min(start_time), max(end_time)) as total_time
from catalog.execution_component_phases
where execution_id = @probExec AND subcomponent_name = @component_name
group by package_name, task_name, subcomponent_name, execution_path, phase
order by active_time desc

From the breakdown of the phases, we figure out that a particular phase is experiencing performance issue. Consequently, we can look into the design of the package for the specific data flow component to resolve the performance issue.

- Please provide PSSDIAG results PSSDIAG data collection utility (microsoft.com) to gather performance information for SQL Server Engine to compare package performing different in different environments.

   PSSDIAG is configured to collect profiler traces so you might see some bit of overhead when this tool is running.  See Tools section here: https://supportability.visualstudio.com/Big%20Data/_wiki/wikis/Big-Data.wiki/445330/PSSdiag

