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

# Information for the Product Team