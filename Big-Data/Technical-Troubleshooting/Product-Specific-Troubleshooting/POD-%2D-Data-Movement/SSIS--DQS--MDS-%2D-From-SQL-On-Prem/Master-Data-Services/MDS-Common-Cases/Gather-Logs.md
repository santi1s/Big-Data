A) SQL trace log during their upgrading database.

B) MDSConfigTool trace log, customer can collect their log with following steps.
1. Close MDSConfigTool.exe
2. Open “MDSConfigTool.exe.config” from “C:\Program Files\Microsoft SQL Server\140\Master Data Services\Configuration”
3. Find option “<source name="MDS" switchType="System.Diagnostics.SourceSwitch" switchValue="Warning, ActivityTracing">”  and change to “<source name="MDS" switchType="System.Diagnostics.SourceSwitch" switchValue="All, ActivityTracing">”
4. Save and close this file.
5. Run MDS database upgrade and find log under “C:\Program Files\Microsoft SQL Server\140\Master Data Services\Configuration\Logs”

C) A backup of the MDS Database maybe helpful to reproduce and troubleshoot the issue.