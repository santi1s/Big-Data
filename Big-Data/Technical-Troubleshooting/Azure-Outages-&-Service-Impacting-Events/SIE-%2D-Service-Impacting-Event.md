Short URL http://aka.ms/daisiepb (does not work yet)

## Summary

This playbook is a guideline for engineers, leads and managers to execute consistently on process for handling a Service Impacting Event outlining specific actions that need to occur at each of the following time intervals and organizational levels. It is designed for both Premier and Broad Commercial cases.

## Playbook for Handling Service Impacting Event Outages

### Discovering a Service Impacting Event (SIE)

Historically there have been three methods whereby a service impacting event has been discovered. The time spent in discovery should be short.

1. Existing ICM
   - Engineer files a Sev 2 ICM and while on the bridge discovers their ICM is due to an ongoing Service Impacting Event - Check Azure Status Page and Iridias

2. Increase in cases
   - An engineer notices a sudden and dramatic increase in cases in their queue, all of which seem to be reporting similar symptoms
     - Engineer will review a subset of the cases to confirm
     - Contact EEE/PG to confirm the service impacting event
     - Create a Sev 2 ICM and assign to the appropriate service queue. PG typically will respond within 15 mins

3. In rare cases, PG will contact CSS TA’s and/or manager reporting a potential outage



## Process

Depending on their job title, each stakeholder will play a different role during the event. Here are the highlights for each one.

<details>
  <summary> Manager (Click to expand!)</summary>

During a SIE the manager responsibilities will be:

- Acknowledge SIE
  - Manager is on point to make the determination whether an event should be considered an SIE or standard operations - Run SIE tool if number of support cases > 8

- Initiate this Playbook

- Organize roles

  - Identify the Task Team with enough TAs/SMEs and SEs for the case load

  - Removed Identified engineers from queue based on case Load

- Decide if auto-assignment must be suspended and communicate it (Not Applicable to Big Data, however RAT tool should be updated to ensure that this team is taken out of the queues.)

  - Depending on the SIE case load may be necessary temporarily suspending auto-assignment to have enough time for marking the related cases

- TA/manager to create teams channel for communication
</details>

<details>
  <summary> Technical Advisor (TA)</summary>

The TAs selected by the acting manager will do the following:

1. Identify SIE number
   - Create a new ICM for specific product if it doesn’t exist and tag parent ICM.
   - Use existing ICM

2. Update Manager about the outage and send out communication to the team every time that a communication is sent to the customers

   - Email to Global Technology DL
     - Big Data: Open Source: bdopensource@microsoft.com
     - Big Data: Data Movement: bddatamovement@microsoft.com
     - Big Data: Databases: bddatabase@microsoft.com

   - Optional if manager did not create: Create a chat in Teams and invite all relevant stakeholders, e.g., Mgrs., TAs, SEs, EEEs, IMs, etc.

   - [Email template](/.attachments/Outage_template-34ec6f94-fc08-4d2e-b97f-01febfcc0773.msg)

3. TA or designated CSS engineer will continue to be on Partner controlled bridge and/or Technical controlled bridge to get latest information on the SIE

4. Continue to scan the queue for any new incoming cases and update them accordingly

5. For ALL cases:

   - Update the IcM incident # field in Service Desk to include the SIE number appending

   - Change case Status to Troubleshooting.

   - Mark non-SIE related cases "NOT SIE" in the internal title

   - Make sure the "Service Impacting Event (SIE)" checkbox is marked

6. Start sending communication to cases marked as SIE from the SIE mailer tool, using message taken from Iridias . Only use latest public message, do not include internal communications

   - The SIE communication message should include this statement:

§ "Stay informed about Azure service issues by creating custom service health alerts: https://aka.ms/ash-videos for video tutorials and https://aka.ms/ash-alerts for how-to documentation."

   - TA's should ensure customer communication happens without fail on regular basis (hourly), unless otherwise communicated by AzComm / PG

   - Send the same updates to the team as detailed in step 2

7. Designate one TA/SME to scan the SIE cases list which has "Inbound Email" column "Yes", and if specific assistance is required, uncheck the SIE box, change the title to "SIE # SPECIAL ATTENTION NEEDED" and send the case back to the queue

   - For a scenario where a different TZ is monitoring the SIE cases and doesn’t own them, when the “Inbound email” column says “yes”, the case must be yanked in order for action to be properly reflected on Service Desk, i.e., SIE “Inbound Email” to change status

8. If outage is mitigated ensure all the case status are changed accordingly and mitigation communications sent to customers as well.

9. In order to identify if any customer is still impacted post mitigation, keep checking cases with "Inbound Email" column "Yes":

   - If customer is still impacted, check with PG immediately and uncheck the SIE checkbox so that it appears in queue (Push it back to queue if it needs a new engineer).

   - If a customer verified mitigation and asked to close the case no need to wait for RCA, just close it.

   - If customer's SLA for service uptime has been violated AND customer has requested a refund, create a task to ASMS team so that they can create a new case on behalf of customer and then we can close this case.

10. Once RCA is ready send out closing communication, which should clearly state that the case is going to be closed in 24 hrs

11. Add appropriate Root Cause Classification found under "Cloud Event (SIE)" tree.

12. Continue checking the SIE list for incoming emails from CX and reply accordingly

13. After 24 hours or more (confirm with manager) close all the cases that either are unresponsive after previous communication or accepted close
</details>

<details>
  <summary> 
SIE Transfer Between Regions
</summary>
- TA/Managers will actively reach out to next available region Manager and identify TA/SE in that region.

- For cases that needs attention, they will be transferred to newly identified TA/SE.

- TA/SE in both regions would have a warm handover call before end of shift and discuss next possible actions.

- Next region TA/SE would continue to execute process as listed in this doc as per their role.
</details>

<details>
  <summary> 
Support Engineer (SE)
</summary>

1. For Sev A Critsits, call customers and update them about automatic communications from there after

o Note: If customer specifically requests for an engineer to be assigned, uncheck the SIE check box and continue working with them

2. Scan the queue and tag any cases that are related to SIE.

o Update the IcM incident # field in Service Desk to include the SIE number

o Change case Status to Troubleshooting.

o Mark non-SIE related cases "NOT SIE" in the internal title

o Make sure the "Service Impacting Event (SIE)" checkbox is marked

3. If you are not part of the team who are working on SIE's and got an SIE case, please tag the case, call customer, update them and then follow the instructions received in the communication sent to the Pod about the SIE, so the Task Team can take care of the case and also you can move on to the next case to unblock yourself

4. Scan the SIE tagged cases for any customer responses post mitigation which needs further assistance
</details>


## Q&A

**Q: I got a case before SIE is declared and I'm not part of the task team. What should I do now?**
A: Please update customer about the outage and the next communications are going to be via automated emails. If they insist on having an engineer engaged, then continue with the case. If not, reach out to TA from the task team shared via emails

**Q: My customer issue is not resolved even though the SIE is called mitigated**
A: Please reach out to engineering team immediately to verify the issue. If they confirm its not related, then please uncheck the SIE checkbox and continue to work with PG.

**Q: My customer is requesting RCA**
A: SIE RCA's typically take around a week and customers will be sent bulk communication once it ready

**Q: My customer is requesting refund for the downtime**
A: Please create task to ASMS team for refund and they will create a case on behalf of customer to process the refund. Once a case is created, close the technical ticket. ASMS – Handling Credit Requests and Refunds

**Q: Where can I find RCA for outage?**
A: Got to aka.ms/iridias and search for the SIE number to find the RCA that’s posted Public / Portal (Not internal) (Does it all go to Iridias? RCA should be in the ICM, as well)

**Q: For Pro / Broad commercial customers should I own the case?**
A: No. For ALL cases, Premier, Broad commercial / Pro customers, just check the SIE checkbox and update the ICM Incident number to the case. They will receive bulk communications via SIE tool