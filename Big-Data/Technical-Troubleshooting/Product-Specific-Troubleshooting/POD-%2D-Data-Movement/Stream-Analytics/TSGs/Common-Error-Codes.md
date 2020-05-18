You can use activity logs and resource logs to help debug unexpected behaviors from your Azure Stream Analytics job. This article lists the description for every internal error code. 

[Azure Stream Analytics configuration error codes](https://review.docs.microsoft.com/en-us/azure/stream-analytics/configuration-error-codes?branch=release-build-stream-analytics)
 Configuration errors are related to your job configuration, or input and output configurations.
|Code|Cause|Resolution|
|--|--|--|
|KafkaInvalidPermission|Cause: The Stream Analytics job doesn't have the proper permission to perform certain actions.|
|KafkaInvalidConfiguration|Cause: Certain configurations on the Kafka adapter are invalid.|
|KafkaInvalidTimestampType|Cause: The timestamp type used by Kafka is invalid.|
|EventHubUnauthorizedAccess|Cause: Event Hub threw an Unauthorized Access error.|
|EventHubReceiverEpochConflict|Cause: There is more than one Event Hub receiver with different epoch values.|Recommendation: Ensure Service Bus Explorer or an EventProcessorHost application is not connected while your Stream Analytics job is running.|
|EventHubReceiverQuotaExceeded|Cause: Stream Analytics can't connect to a partition because the maximum number of allowed receivers per partition in a consumer group has been reached.|Recommendation: Ensure that other Stream Analytics jobs or Service Bus Explorer are not using the same consumer group.|
|EventHubOutputThrottled|Cause: An error occurred while writing data to Event Hub due to throttling.|Recommendation: If this happens consistently, upgrade the throughput.|
|EventHubOutputInvalidConnectionConfig|Cause: The connection configuration provided is incorrect.|Recommendation: Correct the configuration and restart the job.|
|EventHubOutputInvalidHostname|Cause: The Event Hub host is unreachable.|Recommendation: Ensure the supplied host name is correct.|
|EventHubOutputUnexpectedPartitionCount|Cause: The EventHub sender encountered an unexpected EventHub partition count.|Recommendation: Restart your Stream Analytics job if the EventHub's partition count has changed.|
|CosmosDBPartitionKeyNotFound|Cause: Stream Analytics couldn't find the partition key of a particular Cosmos DB collection in the database.|Recommendation: Ensure there is a valid partition key specified for the collection in Cosmos DB.|
|CosmosDBInvalidPartitionKeyColumn|Cause: Thrown when a partition key is neither a leaf node nor at the top level.|
|CosmosDBInvalidIdColumn|Cause: The query output can't contain the column [id] if a different column is chosen as the primary key property.|
|CosmosDBDatabaseNotFound|Cause: Stream Analytics can't find a CosmosDB database.|
|CosmosDBCollectionNotFound|Cause: Stream Analytics can't find a particular Cosmos DB collection in a database.|
|CosmosDBOutputWriteThrottling|Cause: An error occurred while writing data due to throttling by Cosmos DB.|Recommendation: Upgrade the collection performance tier and tune the performance of your database.|
|SQLDatabaseConnectionStringError|Cause: The Stream Analytics job has encountered an authentication error.|Recommendation: Ensure that the SQL Database connection string is correct.|
|SQLDatabaseManagedIdentityAuthenticationError|Cause: The Stream Analytics job has encountered an authentication error.|Recommendation: Ensure that the account name is configured properly and the job's Managed Identity has access to the SQL Database.|
|SQLDatabaseOutputNoTableError|Cause: Stream Analytics can't find the schema information for a particular table.|
|SQLDWOutputInvalidServiceEdition|Cause: SQL Database is not supported.|Recommendation: Use Synapse SQL pool.|


[Data Errors](https://review.docs.microsoft.com/en-us/azure/stream-analytics/data-error-codes?branch=release-build-stream-analytics)
Data errors occur when there is bad data in the stream, such as an unexpected record schema.
|Code|Cause |Resolution|
|--|--|--|
|InputDeserializationError|Cause: There was an error while deserializing input data.|
|InputEventTimestampNotFound|Cause: Stream Analytics is unable to get a timestamp for resource.|
|InputEventTimestampByOverValueNotFound|Cause: Stream Analytics is unable to get value of TIMESTAMP BY OVER COLUMN.|
|InputEventLateBeyondThreshold|Cause: An input event was sent later than configured tolerance.|
|InputEventEarlyBeyondThreshold|Cause: An input event arrival time is earlier than the input event application timestamp threshold.|
|AzureFunctionMessageSizeExceeded|Cause: The message output to Azure Functions exceeds the size limit.|
|EventHubOutputRecordExceedsSizeLimit|Cause: An output record exceeds the maximum size limit when writing to Event Hub.|
|CosmosDBOutputInvalidId|Cause: The value or the type of a particular column is invalid.|Recommendation: Provide unique non-empty strings that are no longer than 255 characters.|
|CosmosDBOutputInvalidIdCharacter|Cause: The output record's Document ID contains an invalid character.|
|CosmosDBOutputMissingId|Cause: The output record doesn't contain the column [id] to use as the primary key property.|
|CosmosDBOutputMissingIdColumn|Cause: The output record doesn't contain the Document ID property.|Recommendation: Ensure the query output contains the column with a unique non-empty string less than '255' characters.|
|CosmosDBOutputMissingPartitionKey|Cause: The output record is missing the a column to use as the partition key property.|
|CosmosDBOutputSingleRecordTooLarge|Cause: A single record write to Cosmos DB is too large.|
|SQLDatabaseOutputDataError|Cause: Stream Analytics can't write event(s) to SQL Database due to issues in the data.|


[External Availability Erorrs](https://review.docs.microsoft.com/en-us/azure/stream-analytics/external-availability-error-codes?branch=release-build-stream-analytics)
 External availability errors occur when a dependent service is unavailable.
|Code|Cause|Resolution|
|--|--|--|
|ExternalServiceUnavailable|Cause: A service is temporarily unavailable.|Recommendation: Stream Analytics will continue to attempt to reach the service.|
|KafkaServerNotAvailable|Cause: The Kafka server is not available.|
|EventHubMessagingError|Cause: Stream Analytics encountered error when communicating with EventHub.|

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
|Code|Cause|Resolution|
|--|--|--|
|KafkaInvalidRequest|Cause: The request sent to the Kafka server is invalid.|
|KafkaInputError|Cause: Kafka input encountered an issue.|
|CosmosDBOutputBatchSizeTooLarge|Cause: The batch size used to write to Cosmos DB is too large.|Recommendation: Retry with a smaller batch size.|