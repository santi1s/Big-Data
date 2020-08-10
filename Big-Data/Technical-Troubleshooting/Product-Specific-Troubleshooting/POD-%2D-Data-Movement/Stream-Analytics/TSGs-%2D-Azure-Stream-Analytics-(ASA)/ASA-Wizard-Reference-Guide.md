#Welcome to the reference guide for the ASA Wizard!
Please use this guide as a reference for basic usage and workflow, issue type sections, the Jarvis queries used and what to observe to derive inferences.

You can find the wizard at https://aka.ms/asawizard

##ASA Wizard Objective
The ASA Wizard is an html5, CSS3, and JavaScript application that has two main objectives:

1. Guide support representatives (experienced, or inexperienced) through the troubleshooting process for a variety of issue types faced by customers, allowing them to perform initial troubleshooting and make observations.
1. Provide an automated, consistent troubleshooting log notes format and workflow ensuring a unified experience for the support of Azure Stream Analytics.

##Basic Usage
Follow the fields top to bottom and left to right. Make general job observations, then select your specific issue type and make observations for every Jarvis query listed. Once you are done making your observations and inference, press the "Generate Notes" button and a text file containing the formatted notes will save via your browsers downloader.

##Issue Type Sections
The current version of the ASA Notes App has seven Sections

###Input Stopped
Used to troubleshoot the time when input stopped in a no input/output scenario.

### Output Stopped or Job Crashed
Used to troubleshoot the time when input stopped, or the job crashed, in a no input/output scenario.

### Failed to Start
Used to troubleshoot a job which is failing to start

### High Res Util/Performance Part 1
Used to troubleshoot performance cases,  or performance related issues.

### High Res Util/Performance Part 2(Stepwise processing)
Second part of the performance issue troubleshooting that includes stepwise details.

### Events Lost
Used to troubleshoot a timeframe where events are lost.

### ICM Template
Used to generate a template when an ICM must be submitted to the product team.

## Jarvis Queries
Below are all the Jarvis tables referenced by the various steps of the Wizard, as well as some notes on what to infer from the records.

### TraceJobSignal
The TraceJobSignal is a series of graphs that gives a general overview of job health and input/output flow.

#### Job Signal Status
The first graph in TraceJobSignal that provides a general overview of health and performance for the entire job.

##### What to observe
The status of the job in the given timeframe.

Look for automatic restarts, job starting, stopping, failing, running no heartbeat, or degraded running.

_Automatic Restarts_
Internal restarts performed to resolve job issues, there may be messages in Azure User Events, or Trace events at this time.

_Job Starting_
At the start of a job the anonymized query, DGML topology, and DGML query plan topology are generated. The anonymized query provides a basic snapshot of the user's query with all pii removed. DGML topology, and query plan topology are used for advanced troubleshooting and when submitting ICM.

_Running No Heartbeat_
Indicates the job is running, but not processing correctly. There may be messages in Azure User Events, or trace events at this time.

_Degraded_
Indicates the job is running, but with exceptions. There are likely messages in Azure User Events, or trace events when the job is running degraded.

#### Max Events Volume
The second graph of TraceJobSignal that provides a general overview of the input and output rates for the entire job.

##### What to observe
Periods of input and/or output stoppage.
Periods where input far exceeds output, or output far exceeds input.
Unusual spikes in input our output

#### TraceJobStatus
Lists all the job run ids for the job in the specified timeframe.

##### What to observe
JobRunIds associated with the statuses observed in the JogSignalSatus graph.

Times of JobRunIds, they will help you associate to observations in JobSignalStatus, Azure User Events, and Trace Evens.

#### Job Metrics Whole Job part 1
One of two queries to view the metrics of the entire job.

Contains input/output event rates, cpu utilization, resource utilization, and backlogged events.

##### What to observe
Stoppage of input/output (confirm against job signal)
CPU utilization above 120
Resource utilization above 80
High number of backlogged input/output events
Can indicate slow query processing, or late events arriving with no late arrival policy established.

#### Job Metrics Whole Job part 2
Second query to view metrics on the entire job

Contains input sources, adapter requests, batch requests, query events, query events adjusted or dropped

##### What to observe
High number of adapter or batch requests with low input
High number of events in query state
High number of query events adjusted.

#### Job I/O table
Provides details on the times data is processed at different steps in the job.

##### What to observe
Compare InputLastProcessed time against OutputLastProcessed and/or QueryLast Processed to determine if there is a slowdown in the job.

For example. Delay of more than seconds from InputLastProcessed to OutputLastPorcessed indicates a slowdown from input to output.

#### Azure User Events
View messages that can be seen by the user in the Activity Log of their job.

##### What to observe
Check for any messages that can relate to issue or may be an indirect symptom. Be mindful of the difference between a message, exception, and error.

#### Trace Events
View more detailed messages than what the user can see in the Activity log of their job.

##### What to observe
Get Anonymized query, DGML, DGML topology. DGML and DGML topology are only used for advanced troubleshooting.

Use data gathered from job signal, and metrics to inform messages. Messages should confirm or inform findings from JobSignal and/or JobMetrics

#### Processing Lag
Provides details on time taken at each step of the ASA job.

##### What to observe
Look for unusually high lag times.

#### Query Step(Last Processing Time)
Provides information on the last processing time for each step in the query. Can help isolate delays in query processing.

##### What to observe
Large time gaps between query steps.

#### Query Step(Event Count Cumulative)
Provides information on the number of events that are being processed by a particular step of a query.

##### What to observe
Steadily increasing event count on a step

High event count on a step, with low event count on others.