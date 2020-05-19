[[_TOC_]]


# Runtime Not Found

## Error Message 
E_USER_RUNTIMECACHE_RUNTIMENOTFOUND: Runtime is not found.

## Cause
The runtime the job is using to is either incorrect or expired.
They are likely using a custom runtime for the job.

## Troubleshoot
Check what runtime they are using either by taking the provided job url or by their ADLA account name, [and bring up their ADLA resource using the Data Lake Analytics tools](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/312740/Troubleshooting-Data-Lake-Analytics?anchor=using-visual-studio-tools). For a job failing with the 'Runtime is not found.' error, check what runtime they are using, by looking in the job status panel under 'Runtime'

![image.png](/.attachments/image-0b95d11a-3375-41a2-974a-c72018861071.png)

1. It is likely they are using a custom runtime for the jobs that are failing. If some jobs are failing and others succeeding, this is a marker that they are probably using a custom runtime for the failing job.
**a.** Open one of the failing jobs in the portal, either create a new job and under 'more options' make sure the job is set to run under a Default Runtime.
Or go to Job Management
![image.png](/.attachments/image-9418b03b-8845-4c96-826a-568a0c8cd1ca.png)
Then Click on the failing job
![image.png](/.attachments/image-51cdf20e-0c91-4e87-9dce-7ea41b9d0517.png)
Select 'More Options' and make sure the runtime is set to 'Default' then try running again.
![image.png](/.attachments/image-11226894-466b-48cc-8ea4-3fd28d4d84bb.png)

## Resolution

1. Run jobs without a custom runtime.
2. If when running a job without a custom runtime it still fails with 'runtime not found' open an ICM.