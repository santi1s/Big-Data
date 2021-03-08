[[_TOC_]]

# First Steps

## Information You Will Need
1. Job URL for the failing job and/or the job that is running unexpectedly. You can find the job URL here in the portal:
![image.png](/.attachments/image-0b1b5fb5-ab2c-4c6c-9c75-7531fd6f96a4.png)
Or here, in Visual Studio:
![image.png](/.attachments/image-37fa1e9f-f083-4722-a9a8-3581ab872ee9.png)

2. Permission from the customer to access the data associated with the job. This consent is required by the product team to be able to troubleshoot ADLA jobs. It can be found in the case description, here:
![image.png](/.attachments/image-b72b7778-c850-41ad-850b-95c3f5fd7e8f.png)
If the customer has left this blank, or has replied 'No' you can request that they confirm permission, using a request like this:
_Do we have your consent to access data surrounding this job to troubleshoot this issue? We will only have access for the duration of our troubleshooting process, and only for this issue._

3. Job Graph - For jobs that are seeing performance problems, the Job Graph can be very helpful. The job graph is the full chart that shows all the computing vertices, how much data passed through each one, how many compute units were used, and how long each vertex took to complete.

4. Script - The U-SQL script can sometimes be helpful to understand the origins of an issue.

# Visual Studio Tools

## Install Visual Studio Tools

Go to step 3 on this page to install the latest tools: https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/276227/Support-Training

## Using Visual Studio Tools

### Looking Up an ADLA Account
![image.png](/.attachments/image-5c28d0b8-78d6-443a-b418-8d8fda0f1543.png)
### Looking up a Job
![image.png](/.attachments/image-14c0d335-7cca-4cf2-a4de-feb885a5318b.png)

### Investigating Available Job Logs
![image.png](/.attachments/image-9e9ccc2c-4418-4943-89ee-38eab5d59d77.png)


# Common Issues

## ADLA Job Failures
If a customer is experiencing a failure with their ADLA job, the error message will tell you what is going on.

There are two kinds of errors in ADLA: **System** and **User**

### System Failures
These are usually caused by a problem on the backend or a problem with the runtime.
Customers are not charged for jobs that fail with a "System"  error message.

If the issue happened once and they have successfully re-run the job, it is likely a transient issue.
If the issue is happening consistently, open an ICM.

### User Failures
These are usually caused by a problem with the customer's configuration, script, or custom code.

**The error message will tell you what's happening**- so be sure to ask your customer if they've addressed the problem outlined by the error message. Be that a missing file, unhandled exceptions in C# code, or any number of other errors.

Customers can write their own extractors and outputters-- and it is up to them (or the author) to debug this custom code.
We do have a guide to help them get started: https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-debug-u-sql-jobs

## Runtime Errors
If your customer is seeing errors like "Invalid Runtime" or "Expired Runtime" check and see if they're using the current default runtime (compare failing jobs to working jobs or run a test job of your own!)

If the job has a custom runtime set, ask why and try setting them to the default runtime.

If this does not resolve the issue, or if they are not using a custom runtime-- open an ICM.

## Permissions Errors

Permissions issues with ADLS ACLS will always mention "acl" in the error message. If it only says "Access Issue" it is likely due to the fire wall or some other high-level permissions.

For ACL errors, follow the [ADLS Access Troubleshooting Guide.](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/280901/Troubleshooting-Access)

For other issues check the firewall and use the ADLA [Add User Wizard](https://docs.microsoft.com/en-us/azure/data-lake-analytics/data-lake-analytics-add-users) to assign permissions to the user that is faulting.

## Other Errors/Issues
[Reach out to the ADLA Teams Channel](https://teams.microsoft.com/l/team/19%3ac593d664843c4d8d9a68eadb80d45d7b%40thread.skype/conversations?groupId=f105a548-2134-4fdb-baff-8d038cd9c2ec&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47)

# Information for the Product Team/ICMs

When opening an ICM to the ADLA team you will need this information:
1. Error Message/Issue to troubleshoot.
2. Job URL of failing/bad job.
4. Either an email with customer approval to access data or a screenshot of the customer approval to access data from the case. (Guide Below)
3. (Optional) Job URL of previously successful/good job.


Customer Approval:
Permission from the customer to access the data associated with the job. This consent is required by the product team to be able to troubleshoot ADLA jobs. It can be found in the case description, here:
![image.png](/.attachments/image-b72b7778-c850-41ad-850b-95c3f5fd7e8f.png)
If the customer has left this blank, or has replied 'No' you can request that they confirm permission, using a request like this:
_Do we have your consent to access data surrounding this job to troubleshoot this issue? We will only have access for the duration of our troubleshooting process, and only for this issue._
