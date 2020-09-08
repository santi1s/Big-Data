##OVERVIEW
**How to test an ASA Query**
In Azure Stream Analytics, you can test your query without starting or stopping your job. You can test queries on incoming data from your streaming sources or upload sample data from a local file on Azure Portal. [More Details here](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-test-query)

##KNOWN ISSUES
**ASA - Number of requests exceeded threshold when sampling input data**
 

 

|Subject|Details|
|--|--|
|  Issue| "The number of requests received exceeded Threshold. Please try again after few minutes" |
| Error |  Sample input •AmBrwrEmaKonsentSqIlnpur failed for Stream A..The number of received exceeded threshold. Pkase try again after few ![image.png](/.attachments/image-b4c8a5f8-aa40-4537-80d6-90e6d7e233fc.png) |
| Cause |There is a limit on number of sample data requests in an interval of 15 minutes   |
| Resolution | The counter for request refreshes after 15 minutes and user can run sample data.  |
|  More Information| This is a hard limit and cannot be increased.  |
| SR | 120090124005639  |
| ICM |https://portal.microsofticm.com/imp/v3/incidents/details/203783276/home |



