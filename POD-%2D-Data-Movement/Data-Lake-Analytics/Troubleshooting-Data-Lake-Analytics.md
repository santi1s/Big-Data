[[_TOC_]]

# First Steps

## Things to Look At First

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
1. Download Visual Studio 2015 Enterprise with update 3
https://my.visualstudio.com/Downloads/Featured  
2. Download and install the Latest Data Lake tools for CSS (these are different than the public tools).
If you are connected to corp-net, put the below address into your file explorer:
\\cosbj-01\public\Kona\DRI\2017-06

## Using Visual Studio Tools

### Looking Up an ADLA Account
![image.png](/.attachments/image-d7dec9f7-524e-4b47-b558-ca498e88c4f4.png)

### Looking up a Job
![image.png](/.attachments/image-14569870-9ed6-45b4-b33b-003b1d197a59.png)

### Investigating Available Job Logs
![image.png](/.attachments/image-779b6a63-eaa2-4010-a927-6b0fd5737e15.png)


# Common Issues

# Information for the Product Team