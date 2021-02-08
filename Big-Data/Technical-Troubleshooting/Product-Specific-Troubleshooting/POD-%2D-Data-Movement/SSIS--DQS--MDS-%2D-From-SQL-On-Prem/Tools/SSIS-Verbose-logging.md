SSIS Verbose logging: (Follow either step 1 or step 2)

Step 1) Enable logging inside SSIS package by following the below steps:

In SQL Server Data Tools, open the Integration Services project that contains the package you want.
On the SSIS menu, click Logging.
Select a log provider in the Provider type list, and then click Add.
In the Configuration column, select a connection manager or click <New connection> to create a new connection manager of the appropriate type for the log provider. Use the following connection managers:
o   For Text files, use a File connection manager. For more information, see File Connection Manager

On the Details tab, select Events to log the below log entries :
o   Enable Logging at package level  : Select OnError, OnInformation, OnPreExecute, OnPostExecute, OnProgress

o   Enable Logging for DFT: OnError, OnInformation, OnPreExecute,OnPostExecute, OnPreExecute, BufferSizeTuning, PipelineBufferLeak, PipelineComponent time

o   You will need to unselect the grayed out check marks, and then re-click them so they are white background with black checkmarks.

o   Optionally, click Advanced to specify which information to log.

Note: By default, all information is logged.

On the Details tab, click Save. The Save As dialog box appears. Locate the folder in which to save the logging configuration, type a file name for the new log configuration, and then click Save.
Click OK.
To save the updated package. Deploy it to the SSIS DB catalog and capture the failure error message when it occurs.
 

(OR)

 

Step 2) :If you can’t edit the SSIS package, enable verbose logging via SSISDB catalog:

:Right click on SSISDB catalog-> properties->change the server wide default logging level to verbose as seen below:

  

 