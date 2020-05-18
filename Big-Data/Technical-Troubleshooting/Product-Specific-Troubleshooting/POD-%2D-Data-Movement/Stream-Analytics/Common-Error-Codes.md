You can use activity logs and resource logs to help debug unexpected behaviors from your Azure Stream Analytics job. This article lists the description for every internal error code. 

[Azure Stream Analytics configuration error codes](https://review.docs.microsoft.com/en-us/azure/stream-analytics/configuration-error-codes?branch=release-build-stream-analytics)
 Configuration errors are related to your job configuration, or input and output configurations.

[Data Errors](https://review.docs.microsoft.com/en-us/azure/stream-analytics/data-error-codes?branch=release-build-stream-analytics)
Data errors occur when there is bad data in the stream, such as an unexpected record schema.

[External Availability Erorrs](https://review.docs.microsoft.com/en-us/azure/stream-analytics/external-availability-error-codes?branch=release-build-stream-analytics)
 External availability errors occur when a dependent service is unavailable.

[External Errors](https://review.docs.microsoft.com/en-us/azure/stream-analytics/external-error-codes?branch=release-build-stream-analytics)
External errors are generic errors thrown by an upstream or downstream service that Stream Analytics can't distinguish as a data error, configuration error, or external availability error.

[Internal Errors](https://review.docs.microsoft.com/en-us/azure/stream-analytics/internal-error-codes?branch=release-build-stream-analytics)
Internal errors are generic errors that are thrown within the Stream Analytics platform when Stream Analytics can't distinguish if the error is an Internal Availability error or a bug in the system.