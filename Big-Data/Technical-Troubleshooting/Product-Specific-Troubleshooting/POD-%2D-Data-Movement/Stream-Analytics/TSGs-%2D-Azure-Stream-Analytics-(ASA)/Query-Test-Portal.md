##OVERVIEW
**How to test an ASA Query**
In Azure Stream Analytics, you can test your query without starting or stopping your job. You can test queries on incoming data from your streaming sources or upload sample data from a local file on Azure Portal. [More Details here](https://docs.microsoft.com/en-us/azure/stream-analytics/stream-analytics-test-query)

##TSG Product Group Wiki
https://msdata.visualstudio.com/Azure%20Stream%20Analytics/_wiki/wikis/Azure%20Stream%20Analytics.wiki/15106/How-to-get-portal-Session-ID
When an issue is related to the ASA portal, client Session ID is needed to help troubleshooting. There are two ways to get this ID.

1. In console logs (F12)
With the ASA portal page open, press F12. In the debugger console (the looking may vary based on browser), find the Session ID. It's usually located on the top.

This is the recommended way, because if there are client errors, they will also be shown here and you can send them to PG.

<IMG  src="https://msdata.visualstudio.com/ccb98983-f35b-411a-a9e2-e30b2114eff5/_apis/git/repositories/bcadf608-5057-404f-9c71-a6dc444e09b7/Items?path=%2F.attachments%2Fimage-a0c4dc1c-ea43-4187-849c-f92e930b6dad.png&amp;download=false&amp;resolveLfs=true&amp;%24format=octetStream&amp;api-version=5.0-preview.1&amp;sanitize=true&amp;versionDescriptor.version=wikiMaster"  alt="image.png"/>

2. With debug overlay (Ctrl+Alt+D)
With the ASA portal page open, press Ctrl+Alt+D and Session ID will be shown in the overlay in the bottom right corner.
<IMG  src="https://msdata.visualstudio.com/ccb98983-f35b-411a-a9e2-e30b2114eff5/_apis/git/repositories/bcadf608-5057-404f-9c71-a6dc444e09b7/Items?path=%2F.attachments%2Fimage-8e5aa629-b1d8-4873-abe9-67869fab179f.png&amp;download=false&amp;resolveLfs=true&amp;%24format=octetStream&amp;api-version=5.0-preview.1&amp;sanitize=true&amp;versionDescriptor.version=wikiMaster"  alt="image.png"/>
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



