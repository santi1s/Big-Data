[[_TOC_]]

# Increasing Limits / Throttling

Often, when a customer sees throttling on the ADL side they start talking about increasing the 'throttling' limits to alleviate the problem. But increasing those throttling limits is actually something that very rarely happens and only after LOTS of long conversations with the product team, so here is a guide on how to have those conversations.

# What NOT to Say to Your Customer

1. Don't bring up increasing throttling limits before they do. Throttling limits are only ever increased RARELY, so if possible **avoid the conversation about limits and focus on how they can modify their workflow so they are no longer throttled.**

2. Don't talk to your customer about what the throttling limit is. There is no hard number where you can say "Well after X number of requests, you'll be throttled." That limit is determined by several different factors, so we can't provide your customer with a number.

# So What Can My Customer Do?

If your customer is hitting throttling limits here are some ways you can direct the conversation.

## Why is your customer being throttled?

Data Lake Store is built to handle MASSIVE amounts of data ingestion, so actually, most throttling cases are about the number of requests coming in, rather than the amount of data.



### How Can you tell what 'Kind' of throttling it is?

1. Find the throttling error in Jarvis. There is usually a status code of '429'
2. Check the Store error code associated with that log.
3. Look up the last 3-4 digits of that store error code on [the Data Lake Store Error Code One Note](https://microsoft.sharepoint.com/teams/ADLSGen1-CSSCollaboration/_layouts/15/Doc.aspx?sourcedoc={f47ad678-9d0c-4766-8a17-691ca6564b93}&action=edit&wd=target%28Supportability%20OneNote.one%7Cdffd0533-ef7f-4504-a41b-5e36641307b5%2FADLS%20Error%20Codes%7Cdd7079ee-8626-4134-8d01-b43ce634f386%2F%29&wdorigin=703) (The ADLS Error Codes Page)
That will tell you if the issue is too many file/folder creations, too many requests in general...


## Too Many File/Folder Creations

If your customer is creating too many files/folders at one time, tell them this:

Data Lake Store is built to handle MASSIVE amounts of data ingestion, so actually, most throttling cases are about the number of requests coming in, rather than the amount of data. Your job is creating too many files/folders at one time, so here are some options for you:

1. Aggregate data into fewer, larger files wherever possible.
2. Where not possible, decrease parallelism in jobs that are slowed down/error out with throttling errors.
3. From tools like ADF, throttling errors are automatically retried so you may see a slowdown, rather than an error. For any scripts/tools you've created, we suggest you also add a retry for throttling errors that slowly backs off requests.
4. Are any other jobs creating files/folders on the data lake at the same time? Perhaps these jobs need to be run at different times.


## Too Many Requests

Too many requests coming into the data lake at one time is a rare issue. However, if your customer is running into this issue, you may want to consider:
1. Reducing parallelism on this job.
2. Checking if other jobs are running at the same time against the same data lake, and making sure the work is either divided between data lakes or run at different times.
	
## Too Much Data

I've never seen this limit hit by a customer. If your customer hits it, they're probably already a big customer and it's time to talk to the product team.

# Things to Ask Your Customer When They Are Being Throttled

**1. Is this a new job that has started hitting this issue?**
If so, some of the above guides should help them balance this new job to work with Data Lake limits.
If not, ask if the amount of data has changed, or if other new jobs have been implemented at around the time of the issue.

**2. Is only one job seeing this issue, or are many jobs seeing this issue?**
If just one job, work with your customer to limit parallelism or reduce number of files.
If many/all jobs are seeing this issue, there could be a new job on the customer side that is causing them to hit their limits for all jobs, OR there could be an issue in the region. Check current ICMs or reach out to the product team to see if anything is going on in that customer's region?

**3. Are they hitting this limit all the time, or only once?**
If only once, give them some guidance about how to avoid these limits (as shown above) and check to see if there was any issue at the time.
If they're hitting this limit consistently, ask what kinds of jobs they are running that are having this problem.

**4. Is the job having the issue a one-off (like a historical data load) or is it a job that needs to run daily?**
If the customer is trying to move a MASSIVE amount of information in a one-off, and the guidelines above are not feasible or don't help your customer, we may be able to work with the product team to temporarily increase limits to manage this job.

# Ask the PG/Your TA

If the above options/questions are not workable for your customer, or don't help, open an ICM and/or attend the daily ADLS/ADLA call to discuss options with the product team and your TA.


# When Do Limit Increases Happen?
Throttling is not a rare issue, but increasing the throttling limit is a rare solution.
The product team mostly does limit increase for one-off jobs. Like if your customer has a project that will take x days to run and they need an increase during that time.

The Project Managers from the product team would need to work with the customer to figure out what the limit increase needs to be and for how long.

OR if the customer is CONSTANTLY running into the throttling limit, we can discuss with the Project Managers about increasing the limits for the customer.

However, before that is discussed, often other solutions/workarounds are implemented/tried long before a permanent limit increase is ever granted.

Specific information about what the limit increase would need to be and why will be critical to a limit increase happening, and a project manager from the product team will always be involved before that happens. 

The Microsoft internal ADLS gen1 PM team is adlspm@microsoft.com


#Summary/Quick Reference

Throttling is not a rare issue, but increasing the throttling limit is a rare solution.
Don't discuss a limit increase with your customer first, unless the product group has already suggested it.
First, discuss options for resolution as shown [here.](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/276255/TSGs?anchor=so-what-can-my-customer-do%3F)

If those options are not workable for your customer, or don't help, open an ICM and/or attend the daily ADLS/ADLA call to discuss options with the product team.


