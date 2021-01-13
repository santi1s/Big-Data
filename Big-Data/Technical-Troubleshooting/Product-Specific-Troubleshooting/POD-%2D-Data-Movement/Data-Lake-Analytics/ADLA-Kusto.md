[[_TOC_]]
#Overview
To get access to ADLA Kusto DB, you need to follow these steps

##Get access 
Go to MyAccess https://myaccess/identityiq/home.jsf and request to this group, **TM-CosmosAnalytics** for **Read Only**

Once approved, you can just click on this [ADLA-link](https://adla.eastus2.kusto.windows.net/Default?query=H4sIAAAAAAAEAPPKT3LNS0lNca0o4apRKEnMTlUw5OICAPdqQB4WAAAA&web=0) it will add automatically to your Kusto.

##Sample ADLA query

###ADLA query to find fresh instances of the same recurring job, and their corresponding duration
JobEnded
| where RecurrenceId == "60BBAA66-22A1-6517-D118-85BCCA12AE32"
| extend duration = todatetime(EndTime) - todatetime(StartTime)
| project todatetime(EndTime), duration, JobId, ComputationAccountName
| order by EndTime


###ADLA query to find new instances of the job that takes too long
JobEnded
| where JobId =~ "71492385-d116-422e-87ca-6d322b3f1b43"
| project RecurrenceId
| join kind=inner 
(
    JobEnded
    | extend duration = todatetime(EndTime) - todatetime(StartTime)
    | project todatetime(EndTime), duration, JobId, ComputationAccountName, RecurrenceId
 ) on $left.RecurrenceId == $right.RecurrenceId
 | where duration > timespan(00:30:00)
 | order by EndTime desc
