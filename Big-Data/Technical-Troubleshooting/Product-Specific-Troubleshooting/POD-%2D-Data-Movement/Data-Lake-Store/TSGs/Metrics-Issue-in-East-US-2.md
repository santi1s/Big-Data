<span style="color:#DF0101;">**Notice ADLS gen1 is due for retirement, for more info check out this**</span> [ADLS gen1 Retirement plan TSG](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/444557/ADLS-gen-1-Retirement-plan)


[[_TOC_]]

# The Issue

**Do NOT send this full issue description to your customer. Instead, use the customer communications below.**

We have a long standing design problem with our store analyzer service. It's in a live-query model and sending a lot of requests to the backend to enumerate all files and folders of all accounts in the region every day. This model caused a lot of throttling errors from the backend, and when store analyzer exhausts all its retries on a path it will have to give it up and as a result customer gets inaccurate (smaller than expected) reporting numbers and under-billing. We are working on a new model/design to avoid these problems and improve the accuracy/reliability of our Data-at-Rest reporting and billing. Here's the work item link: https://msazure.visualstudio.com/One/_workitems/edit/5766144/. 

On top of the current design/implementation, while we are still tuning our services to resolve the throttling issues and meanwhile keep enough request rate to complete full enumerations within 24 hours, we do expect/notice that this process might take a little more time, and there isn't a better/quicker way for this until we move to a new design/model with efforts from multiple teams. For now the charts/numbers surfaced in the Azure portal are not guaranteed to be accurate, but we are working hard to resolve the issue and get this to a good state ASAP. We will let you know once the current issue is mitigated/resolved and our reporting is back to a good level of accuracy.

#How to Confirm If Your Customer Is Seeing This Problem
1. Is their Data Lake in East US 2?
2. Check Jarvis to confirm that there are no spikes in 'Delete' or 'Create' operations during the timeframes their metrics are noting spikes or drops.
3. Confirm with your customer if they are missing any critical data.

# Customer Communications

Here is an example of what to communicate to your customers about this issue.

Again, **DO NOT** explain the full issue as shown above. Instead, use this template.

<table border="1";bgcolor="#DFDFDF";>
<tr>
  <td style='border-style:solid;border-color:#A3A3A3;background-color:#e4f7db;border-width:1pt; 
vertical-align:top;width:8in;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

Hello [Customer Name],

There is an outstanding issue with metrics for the Data Lake in East US 2, which the product team is working to resolve, so at times you may sometimes see incorrect metrics reflected from these data lakes in the portal.

 
We apologize for any inconvenience this causes. I will confirm that the behavior your are seeing is part of this inconsistency, and let you know by [DATE].

If you rely regularly on these metrics I do have a workaround script that I can provide you and your team, so please do let me know.
 
Sincerely,

_**[Support Engineer Name]**_
Title | Team
Phone: xxx-xxx-xxxx
Email: xxxxx@microsoft.com
Working Hours:

</td>
</tr>
</table>

#When Will It Be Resolved?

**DO NOT** communicate the specific timeline with your customer, or commit to a date. Provide timing information only if they ask.

Product team has specified this issue may be resolved soon, but their timeframe is June 2020 at the latest.

##Customer Communications on Timing

If they ask for a specific timeframe, tell them that our goal is to have the issue resolved as soon as possible with a timeframe of early this summer at the very latest.

In the meantime there metrics will not always show this issue. Metrics that have previously been incorrect will be corrected before the fix is complete, they may just be a bit behind.

If they regularly rely on these metrics, we have a workaround they can access.

# Workaround
This will query the filesystem for a summary in real-time.
Get-AzDataLakeStoreChildItemSummary -AccountName "abc" -Path "/" -Concurrency 100 | Select-Object -Property DirectoryCount, FileCount, Length
https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/get-azdatalakestorechilditemsummary?view=azps-3.6.1
Note:
1. -Path: Please make sure this is the root folder ("/") when you want to get a summary of the entire account;
2. -Concurrency: This is the concurrency of the enumerations. Please set a proper value based on your client machine.

And again, if you have any questions, or any concerns about the metrics you see, please do reach out anytime to have us confirm behavior on your lake.



# Who to Contact

If you have any questions, reach out to Whitney Henderson (CSS TA) or Rolland Ma (ADLS PG)