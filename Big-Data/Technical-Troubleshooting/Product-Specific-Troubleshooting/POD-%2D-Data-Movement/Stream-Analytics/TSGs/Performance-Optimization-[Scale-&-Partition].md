


**Partitioning tips:**
1. If there are multiple steps in job query - make sure to have same partition key across all steps for better performance
 ![1.png](/.attachments/1-891ca759-cc83-438f-9671-811d636207df.png)
1. Choose the correct partition key so that the input events will split equally into each partition
1. Choose the exact same number of partitions on inputs and outputs
![2.png](/.attachments/2-daaa3698-3c2c-450e-8c9e-b02553e7a476.png)

 
 
**Maximize throughput with repartitioning** - https://azure.microsoft.com/en-us/blog/maximize-throughput-with-repartitioning-in-azure-stream-analytics/

**Query Parallelization** - https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-parallelization

**Understanding and Adjust SUs** - https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-streaming-unit-consumption
 
