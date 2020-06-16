<center>

shortURL for this page: https://aka.ms/bigdatasie

</center>


This playbook is a guideline for engineers, leads and managers to execute consistently on process for handling a Service Impacting Event (also referred to as a Live Site Issue, or LSI) outlining specific actions that need to occur at each of the following time intervals and organizational levels. It is designed for both Premier and Broad Commercial cases.

[[_TOC_]]

<center>

::: video

## Demo Video

<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/3e53aebc-853e-421e-8141-137061905b60?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>

:::

</center>

## Playbook for Handling Service Impacting Event Outages

### Discovering a Service Impacting Event (SIE)

Historically there have been three methods whereby a service impacting event has been discovered. The time spent in discovery should be short.

1. Existing ICM
   - Engineer files a Sev 2 ICM and while on the bridge discovers their ICM is due to an ongoing Service Impacting Event - Check the [Azure Status Page] and [Iridias].

2. Increase in cases
   - An engineer notices a sudden and dramatic increase in cases in their queue, all of which seem to be reporting similar symptoms
     - Engineer will review a subset of the cases to confirm
     - Contact EEE/PG to confirm the service impacting event
     - Create a Sev 2 ICM and assign to the appropriate service queue. PG typically will respond within 15 mins

3. In rare cases, PG will contact CSS TA’s and/or manager reporting a potential outage

## Process

Depending on their job title, each stakeholder will play a different role during the event. Here are the highlights for each one.

### Manager

<details>
  <summary>Click here to expand or collapse this section</summary>

During a SIE the manager responsibilities will be:

- Acknowledge SIE
  - Manager is on point to make the determination whether an event should be considered an SIE or standard operations
    - Run SIE tool if number of support cases > 8

- Initiate this Playbook

- Organize roles

  - Identify the Task Team with enough TAs/SMEs and SEs for the case load

  - Removed Identified engineers from queue based on case Load

- Decide if auto-assignment must be suspended and communicate it (Not Applicable to Big Data, however RAT tool should be updated to ensure that this team is taken out of the queues.)

  - Depending on the SIE case load may be necessary temporarily suspending auto-assignment to have enough time for marking the related cases

- TA/manager to create teams channel for communication

- Use Below kusto query to find unassigned cases and make sure all of them have AgentAlias (else we would miss SLA)

```kusto
let icm_no = "186961759";
cluster('U360sec').database('KPISupportData').table('AllCloudsSupportIncidentWithReferenceModel')
| where InternalTitle  contains icm_no or RelatedICM_IDs contains icm_no
| where CreatedDateTime > ago(20d)
| project IncidentId, AgentAlias,Status
```
Note : replace icm_no with your associated SIE no.

- Below query might be helpful for reporting purpose

```kusto
let icm_no = "186961759";
cluster('U360sec').database('KPISupportData').table('AllCloudsSupportIncidentWithReferenceModel')
| where InternalTitle  contains icm_no or RelatedICM_IDs contains icm_no
| where CreatedDateTime > ago(20d)
| summarize count() by Servicelevel,ServiceOfferingLevel1,ServiceOfferingLevel2
```

- Create a temporary SIE report in [Case triage tool](https://casetriage.azurewebsites.net/) to keep track of Case Assignment(We have seen zombie cases that hasn't MET SLA if there is no Case owner assigned after marking it as SIE). It gets updated every 4 hours so keep checking it periodically. 

Ex:

![image.png](/.attachments/image-31cc553c-77c4-4459-a318-5c99e0353072.png)

</details>

### Technical Advisor (TA)

<details>
  <summary>Click here to expand or collapse this section</summary>

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

   - [Email template]

3. TA or designated CSS engineer will continue to be on Partner controlled bridge and/or Technical controlled bridge to get latest information on the SIE

4. Continue to scan the queue for any new incoming cases and update them either as "NOT SIE" in the internal title or add them to the pool of SIE cases by:
- Taking ownership of the case.
- Adding the Product-Specific SIE ICM Number into the 'ICM' space in the case. 
- Selecting the 'SIE' check box next to the ICM.
The latest update from the SIE tool will be automatically sent to the customer, and the case status will be updated to reflect the latest status change as mandated from the SIE tool.

5. For ALL cases:

   - Update the IcM incident # field in Service Desk to include the SIE number appending

   - Change case Status to Troubleshooting.

   - Mark non-SIE related cases "NOT SIE" in the internal title

   - Make sure the "Service Impacting Event (SIE)" checkbox is marked

6. Start sending communication to cases marked as SIE from the SIE mailer tool, using message taken from Iridias . Only use latest public message, do not include internal communications

   - The SIE communication message should include this statement:

     - "Stay informed about Azure service issues by creating custom service health alerts: https://aka.ms/ash-videos for video tutorials and https://aka.ms/ash-alerts for how-to documentation."

   - TA's should ensure customer communication happens without fail on regular basis (hourly), unless otherwise communicated by AzComm / PG

   - Send the same updates to the team as detailed in step 2

7. Update Internal title on all Outage cases to show SIE number(that would be used for reporting purpose in Case Triage Tool) and short description of issue that would help TAM/Incident Manager/other's

8. Use Case Buddy to meet SLA on all Outage cases.

9. Designate one TA/SME to scan the SIE cases list which has "Inbound Email" column "Yes", and if specific assistance is required, uncheck the SIE box, change the title to "SIE # SPECIAL ATTENTION NEEDED" and send the case back to the queue

   - For a scenario where a different TZ is monitoring the SIE cases and doesn’t own them, when the “Inbound email” column says “yes”, the case must be yanked in order for action to be properly reflected on Service Desk, i.e., SIE “Inbound Email” to change status

10. If outage is mitigated ensure all the case status are changed accordingly and mitigation communications sent to customers as well.

11. In order to identify if any customer is still impacted post mitigation, keep checking cases with "Inbound Email" column "Yes":

   - If customer is still impacted, check with PG immediately and uncheck the SIE checkbox so that it appears in queue (Push it back to queue if it needs a new engineer).

   - If a customer verified mitigation and asked to close the case no need to wait for RCA, just close it.

   - If customer's SLA for service uptime has been violated AND customer has requested a refund, create a task to ASMS team so that they can create a new case on behalf of customer and then we can close this case.

12. Once RCA is ready send out closing communication, which should clearly state that the case is going to be closed in 24 hrs

13. Add appropriate Root Cause Classification found under "Cloud Event (SIE)" tree.

14. Continue checking the SIE list for incoming emails from CX and reply accordingly

15. After 24 hours or more (confirm with manager) close all the cases that either are unresponsive after previous communication or accepted close

</details>

### SIE Transfer Between Regions

<details>
  <summary>Click here to expand or collapse this section</summary>

- TA/Managers will actively reach out to next available region Manager and identify TA/SE in that region.

- For cases that needs attention, they will be transferred to newly identified TA/SE.

- TA/SE in both regions would have a warm handover call before end of shift and discuss next possible actions.

- Next region TA/SE would continue to execute process as listed in this doc as per their role.
</details>

### Support Engineer (SE)

<details>
  <summary>Click here to expand or collapse this section</summary>

1. For Sev A Critsits, call customers and update them about automatic communications from there after

   - Note: If customer specifically requests for an engineer to be assigned, uncheck the SIE check box and continue working with them

2. Scan the queue and tag any cases that are related to SIE.

   - Update the IcM incident # field in Service Desk to include the SIE number

   - Change case Status to Troubleshooting.

   - Mark non-SIE related cases "NOT SIE" in the internal title

   - Make sure the "Service Impacting Event (SIE)" checkbox is marked

3. If you are not part of the team who are working on SIE's and got an SIE case, please tag the case, call customer, update them and then follow the instructions received in the communication sent to the Pod about the SIE, so the Task Team can take care of the case and also you can move on to the next case to unblock yourself

4. Scan the SIE tagged cases for any customer responses post mitigation which needs further assistance

</details>


### Duty Manager's (DM's)
<details>
  <summary>Click here to expand or collapse this section</summary>

During a SIE the Duty Manager responsibilities will be:
- Reach out to Support Manager and mention about possible outage if they see increase in number of support cases.
- If Support Manager decides to suspend auto-assignment, Assign only case with internal title as "NOT SIE"
- Reach out to Support Engineer/TA regarding any support case that is about to miss SLA < 5mins and not marked as "NOT SIE".

</details>

## How to Use the SIE Tool

### Where to Find the SIE Tool

There are two ways to find the SIE Tool:

1. Go directly to https://servicedesk.microsoft.com/#/mycases/siecases/
Add your SIE number at the end of the URL to search it specifically. For example: https://servicedesk.microsoft.com/#/mycases/siecases/0000000

2. You can go to https://servicedesk.microsoft.com/#/home and under the 'Search' pane, change the 'Case Id' drop down to 'SIE ID' and search for the current SIE number.
![image.png](/.attachments/image-36b1e0b3-a02d-4313-aa7c-a81f8bbfecef.png)

### Navigate the SIE Tool

To view all cases associated with an SIE, you can select the + button next to the SIE ID.
![image.png](/.attachments/image-d30be884-d5cb-4529-a802-88637540a3a3.png)

Any case with an unread inbound communication will show a mail icon next to the case number.
![image.png](/.attachments/image-9125da07-b3ce-4e62-9aa3-1506d94817e9.png)

Once you have found your specific SIE Number, you can select all cases under that number by pressing the :white_check_mark: check next to the SIE Number
![image.png](/.attachments/image-e4a857cb-e960-426e-a0d9-6351d45e6b44.png)


### Update SIE Cases
1. Select all cases associated with your SIE by selecting the check mark next to the SIE Number.
2. Select the 'Update SIE Cases' Link at the top of the query pane.
![image.png](/.attachments/image-5402ac07-c26a-417f-8504-a7f23d615b6b.png)

3. From here you can update the state, status, internal title, product family, product version, and Root Cause for **ALL** selected cases simultaneously. 
![image.png](/.attachments/image-cc34e89f-885b-44c1-8826-febe700d718a.png)

### Update SIE Communications 

<center>

**For all case communications, where possible please use official communications for the issue-- these will be produced by an AzComm team member (who will be in an SIE bridge) and you can obtain communications directly from them, or obtain them from the Azure Status page once they are published.**



https://status.azure.com/



**For any other communications you've written, confirm with Product Group for accuracy before sending.**

</center>

1. Select all cases associated with an SIE by clicking the check mark next to the top SIE ID.
2. Select 'Create SIE Communications' link at the top of the query pane.
![image.png](/.attachments/image-6254316f-5268-47c3-91c8-cd9da52917ce.png)
3. Select the email template appropriate to the stage of the case.
![image.png](/.attachments/image-792ef892-a131-42c7-8b26-fb77d6d8caab.png)
4. In these templates, anything in the [[ ]] will be automatically populated by the SIE tool, so you need not update these pieces of text for each case.
5. _For Initial Emails and Update Emails_ - Update the **Summary of Impact** and **Next Steps** sections with information relevant to your outage.  **Summary of Impact** should cover behaviors/symptoms that users might see and the context they might see it in, be it a specific Azure Resource or Region. **Next Steps** should cover Microsoft's currently published status, when your customer will receive the next communication and any potential workarounds that are available to your customer to get around the problem while we resolve the case.
6. _For Resolved Emails_ - Update the **Summary of Impact** section with behaviors/symptoms that users might have seen and the context they might have seen them in be ithey a specific Azure Resource or Region. If available, include root cause information -- or include that root cause information will be provided and where it can be found. (This will usually be on the Azure Status History Page (https://status.azure.com/en-us/status/history/) but if not, ask your product team where it can be found.) **Also include** a request for confirmation that the issue is resolved, and let them know that if the issue is not resolved they should re-open the case and contact us through the case tool. This way if any case has been inappropriately marked we will still be able to follow up with the customer.

### Closing SIE Cases
1. Make sure you have sent out the 'Case Resolved' communication for all SIE cases. This communication should contain this information:
"Please confirm that the issue is resolved by updating your case. If your issue is not resolved, please re-open your case and send any further information about the issue you are experiencing."
2. If there are a low number of cases, wait for all customers to confirm resolution and close cases out individually.
3. If there are a high number of cases, wait for confirmation from several customers that the issue is resolved, and follow close process at your EoD.
4. To close, select all cases associated with your SIE, and select 'Update SIE Cases'
5. Change Case State to 'Closed' and status to 'Resolved' as well as updating any routing information and root cause appropriately.
6. Submit changes.



## Q&A

### I got a case before SIE is declared and I'm not part of the task team

Please update customer about the outage and the next communications are going to be via automated emails. If they insist on having an engineer engaged, then continue with the case. If not, reach out to TA from the task team shared via emails

### My customer issue is not resolved even though the SIE is called mitigated

Please reach out to engineering team immediately to verify the issue. If they confirm its not related, then please uncheck the SIE checkbox and continue to work with PG.

### My customer is requesting RCA

SIE RCA's typically take around a week and customers will be sent bulk communication once it ready

### My customer is requesting refund for the downtime

Please create task to ASMS team for refund and they will create a case on behalf of customer to process the refund. Once a case is created, close the technical ticket. ASMS – Handling Credit Requests and Refunds

### Where can I find RCA for outage?

Go to [Iridias] and search for the SIE number to find the RCA that’s posted Public / Portal (Not internal) (Does it all go to Iridias? RCA should be in the ICM, as well)

### For Pro / Broad commercial customers should I own the case?

No. For ALL cases, Premier, Broad commercial / Pro customers, just check the SIE checkbox and update the ICM Incident number to the case. They will receive bulk communications via SIE tool

## Service Desk Roleset for SIE

![image.png](/.attachments/image-456c406f-55fe-41ef-a930-81ef0d4c433e.png)


## Resources

   - [Email template]


<!--region LINK REFERENCE DEFINITIONS -->

[Azure Status Page]: <https://aka.ms/azurestatus>
[Email template]: </.attachments/Outage_template-34ec6f94-fc08-4d2e-b97f-01febfcc0773.msg>
[Iridias]: <https://aka.ms/iridias>

<!--endregion LINK REFERENCE DEFINITIONS -->