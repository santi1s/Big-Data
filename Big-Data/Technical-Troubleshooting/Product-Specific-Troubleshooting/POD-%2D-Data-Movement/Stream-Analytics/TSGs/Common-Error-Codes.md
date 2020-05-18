You can use activity logs and resource logs to help debug unexpected behaviors from your Azure Stream Analytics job. This article lists the description for every internal error code. 

[Azure Stream Analytics configuration error codes](https://review.docs.microsoft.com/en-us/azure/stream-analytics/configuration-error-codes?branch=release-build-stream-analytics)
 Configuration errors are related to your job configuration, or input and output configurations.

[Data Errors](https://review.docs.microsoft.com/en-us/azure/stream-analytics/data-error-codes?branch=release-build-stream-analytics)
Data errors occur when there is bad data in the stream, such as an unexpected record schema.

[External Availability Erorrs](https://review.docs.microsoft.com/en-us/azure/stream-analytics/external-availability-error-codes?branch=release-build-stream-analytics)
 External availability errors occur when a dependent service is unavailable.

[External Errors](https://review.docs.microsoft.com/en-us/azure/stream-analytics/external-error-codes?branch=release-build-stream-analytics)
External errors are generic errors thrown by an upstream or downstream service that Stream Analytics can't distinguish as a data error, configuration error, or external availability error.

|Code|Cause|Resolution|
|--|--|--|
|AdapterInitializationError|Cause: An error occurred when initializing the an adapter.|
|AdapterFailedToWriteEvents|Cause: An error occurred while writing data to an adapter.|
|KafkaServerError|Cause: The Kafka server returned an error:|
|AzureFunctionHttpError|Cause: An HTTP error was returned from Azure functions.|
|AzureFunctionFailedToSendMessage|Cause: Stream Analytics failed to write events to Azure Function.|
|AzureFunctionRedirectError|Cause: There is a redirect error when outputting to Azure Functions.|
|AzureFunctionClientError|Cause: There is a client error outputting to Azure Functions.|
|AzureFunctionServerError|Cause: There is a server error outputting to Azure Functions.|
|AzureFunctionHttpTimeOutError|Cause: Writing to Azure functions failed as the http request exceeded the timeout.|Recommendation: Check your Azure Functions logs for potential delays.|
|EventHubArgumentError|Cause: Input offsets are invalid. This may be due to a failover.|Recommendation: Restart your Stream Analytics job from last output time.|
|EventHubFailedToWriteEvents|Cause: An error occurred while sending data to Event Hub.|
|CosmosDBConnectionFailureAfterMaxRetries|Cause: Stream Analytics failed to connect to a Cosmos DB account after the maximum number of retries.|
|CosmosDBFailureAfterMaxRetries|Cause: Stream Analytics failed to query the Cosmos DB database and collection after the maximum number of retries.|
|CosmosDBFailedToCreateStoredProcedure|Cause: CosmosDB can't create a stored procedure after several retries.|
|CosmosDBOutputRequestTimeout|Cause: The upsert stored procedure returned an error.|
|SQLDatabaseOutputInitializationError|Cause: Stream Analytics can't initialize the SQL Database output.|
|SQLDatabaseOutputWriteError|Cause: Stream Analytics can't write events to the SQL Database output.|
|SQLDWOutputInitializationError|Cause: An error occurred when initializing a Synapse SQL pool output.|
|SQLDWOutputWriteError|Cause: An error occurred when writing output to a Synapse SQL pool.|

[Internal Errors](https://review.docs.microsoft.com/en-us/azure/stream-analytics/internal-error-codes?branch=release-build-stream-analytics)
Internal errors are generic errors that are thrown within the Stream Analytics platform when Stream Analytics can't distinguish if the error is an Internal Availability error or a bug in the system.