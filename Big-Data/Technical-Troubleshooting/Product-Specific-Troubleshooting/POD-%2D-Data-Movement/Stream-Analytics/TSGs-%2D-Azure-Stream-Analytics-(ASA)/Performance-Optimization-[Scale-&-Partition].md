


**Partitioning tips:**
1. If there are multiple steps in job query - make sure to have same partition key across all steps for better performance
 ![1.png](/.attachments/1-891ca759-cc83-438f-9671-811d636207df.png)
1. Choose the correct partition key so that the input events will split equally into each partition
1. Choose the exact same number of partitions on inputs and outputs
![2.png](/.attachments/2-daaa3698-3c2c-450e-8c9e-b02553e7a476.png)

 **Streaming Units tips:**
1. Each input partition of a job input has a buffer. The larger number of input partitions, the more resource the job consumes. For each streaming unit, Azure Stream Analytics can process roughly 1 MB/s of input. Therefore, you can optimize by matching the number of Stream Analytics streaming units with the number of partitions in your Event Hub

1. For a job with 6 streaming units, you may need 4 or 8 partitions from the Event Hub. However, avoid too many unnecessary partitions since that causes excessive resource usage. For example, an Event Hub with 16 partitions or larger in a Stream Analytics job that has 1 streaming unit.

3. In regards to the use of Streaming Units, as a general suggestion the best performance/throughput  is achieved when input is already partitioned and the partitioning scheme is specified in the input definition, and then every step in the query (i.e. FROM clause) specifies PARTITION BY PartitionId. This way we can independently scale each partition which results in the best utilization of the SU resources.

4. If the job is not using partition by partition ID, there may be a concern that some partitions that have a much heavier load than others and require increased SU while others do not.  It is important to chose a partition that will evenly distribute the processing load.  

**Maximize throughput with repartitioning** - https://azure.microsoft.com/en-us/blog/maximize-throughput-with-repartitioning-in-azure-stream-analytics/

**Query Parallelization** - https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-parallelization

**Understanding and Adjust SUs** - https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-streaming-unit-consumption
 
