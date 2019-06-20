The best way to author and test queries is [Visual Studio](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-tools-for-visual-studio-install)/[VS Code](https://docs.microsoft.com/en-us/azure/stream-analytics/quick-create-vs-code) plugins. The customer can capture sample input data and quickly iterate on the query logic.

However, when customer deploys query as ASA cloud job, the query can behave differently. Here are most common reasons and corresponding troubleshooting steps.

1) **Data is not reaching the query or has unexpected format**. 
Check "Input Events" metrics for all input sources to make sure the data is present and being read by ASA job.
Check "Events Per Second" metric for all query steps in Job Diagram View - the data can be unexpectedly filtered or reduced by the query logic.

2) **Time policies** - the data can be arriving late or is out of order and thus being adjusted as the result.
Check "Late events" and "Out-of-order" events metrics and make sure the value is 0 for both. If there are late/out-of-order events, they will be dropped or their timestamps will be adjusted (depending on the policy). This will likely affect query logic and produce unexpected results.


If input metrics look correct, the query needs to be debugged in Visual Studio or VS Code. To do it efficiently, exact input data needs to be captured. This can be done by introducing additional "debugging" outputs and SELECT INTO statements.

For example, if the original query is


```
SELECT I1.id, I1.mytime 
FROM [input1] I1 TIMESTAMP BY mytime
  JOIN [input2] I2 TIMESTAMP BY mytime                                                   
  ON  I1.id = I2.id
    AND DATEDIFF(minute,I1,I2) BETWEEN 0 AND 90
```

Customer will need to add "DataFromInput1" and "DataFromInput2" (pointing to blob storage for example) and add the following two steps to the query (one per input source):

```
SELECT System.Timestamp AS asaTimetamp, * 
INTO DataFromInput1
FROM [input1] TIMESTAMP BY mytime

SELECT System.Timestamp AS asaTimetamp, * 
INTO DataFromInput2
FROM [input2] TIMESTAMP BY mytime
```


The customer can re-run the query, download data files from "DataFromInput1" and "DataFromInput2" outputs and debug in Visual Studio or VS Code.
If results are different from cloud run, this issue needs to be escalated to product group. Full definition of the query (with UDF, UDA, reference data, etc.) and input data files are required for further troubleshooting.

_Authored By: Alex Raizman_