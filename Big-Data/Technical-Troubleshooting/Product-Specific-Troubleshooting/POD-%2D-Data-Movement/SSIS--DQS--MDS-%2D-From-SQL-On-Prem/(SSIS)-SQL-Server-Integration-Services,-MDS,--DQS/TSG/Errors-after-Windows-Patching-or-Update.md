Customer receives errors after Windows patching/update

**Initial Scoping Questions**
What are the current version you are using when executing the package in SQL Server
- SQL Server
- SSDT
- Visual Studio
- What was the Widows patch you installed
- Gather SSIS log

**STEPS TO TROUBLESHOOT**
1. Could you please repair SSDT to see if this will resolve the issue.  A online support guide to repair SSDT is available here: [Repair Visual Studio | Microsoft Docs](https://ddec1-0-en-ctp.trendmicro.com/wis/clicktime/v1/query?url=https%3a%2f%2fdocs.microsoft.com%2fen%2dus%2fvisualstudio%2finstall%2frepair%2dvisual%2dstudio%3fview%3dvs%2d2019&umid=5d725047-d0f2-4bee-8f9b-bd86a0e638ef&auth=65a620fa4b6e2edf0405a6ed61dc7465231096cd-9b37c51bbceb9116af4f94100915934105d5ed45)

1. If that does not resolve the error, we would need you to gather ProcMon Trace during the time the error occurs.  There is a ProcMon support guide available online here: [Process Monitor - Windows Sysinternals | Microsoft Docs](https://ddec1-0-en-ctp.trendmicro.com/wis/clicktime/v1/query?url=https%3a%2f%2fdocs.microsoft.com%2fen%2dus%2fsysinternals%2fdownloads%2fprocmon&umid=5d725047-d0f2-4bee-8f9b-bd86a0e638ef&auth=65a620fa4b6e2edf0405a6ed61dc7465231096cd-77daca14c017318b7362eb5a1911d71303ae3684)
