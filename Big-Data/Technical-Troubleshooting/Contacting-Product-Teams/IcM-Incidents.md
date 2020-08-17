<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#f64e4e;background-color:#f9cccc;border-width:3pt; 
vertical-align:top;width:8in;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

<b> This page has an open work item! </b>
If you would like to contribute, please follow up here:
#5452
</td>
</tr>
</table>

[[_TOC_]]
# Severity Best Practices
ICM Severity - we had an escalation recently and realized that we had been a bit conditioned by some PGs on setting severity. We are resetting and aligning our approach to the following:


**Outage:                          ICM Sev 1
	Sev A case:                      ICM Sev 2
	Sev B/C case:                  ICM Sev 3**


_Q. If we are working on a sev A , what severity for an ICM do we set?_  

A. We create an ICM with Sev 2



_Q. If we are working on a Sev B and created CRI 3 and then the case severity increases to A , do we change the ICM severity?_ 

A. Yes, we change accordingly from Sev 3 to Sev 2.

## Setting a Sev 2 or Sev 1 ICM


If you need to open an ICM with Sev 1 (Very Rare) or Sev 2, you must have approval either from a "EEE" or your "SEE/SME + Manager"

There is a field when creating a Sev 2 ICM that you will need to fill out upon creation through aka.ms/icm OR after you have created the incident through ASC:
![image.png](/.attachments/image-b0c45551-f899-4674-9b79-79dbfd2dfa9f.png)
 
**Any ICM Sev1 or 2 that does not comply to this process will be immediately decreased to Sev3.**

[Regional SMEs by Product](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/305780/Regional-Subject-Matter-Experts-(SMEs))
[EEEs by Product](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/305784/EEE-Embedded-Escalation-Engineer)

### Escalating on the Weekends

For weekends, the review and approval must be done by a peer, meaning that the case owner MUST engage with a colleague prior to submitting the ICM Sev1 or Sev2. This might mean engaging the on-call engineer or speaking between POD and ARR (should both teams have on-duty engineers).

 
## Is Your Incident a 'Regression' Caused By a New Deployment?
If case seems to be related with a regression issue caused by a new deployment, even if it’s an isolated one for a single customer, we as CSS should assess it’s indeed regression related by understanding the following:
 
•	Is it something that used to work well and all of sudden started failing, without the customer making any change on their side? 
•	Does the impact start happening right around or after the new deployment time?
•	Are we seeing the issue being reported by more than one customer?
 (not necessary, but definitely raises the probability)
 
If we conclude that it is a regression issue, then the ICM is eligible for Sev2 and we should either open it as such or raise it’s severity. Nonetheless, the approval process, must still be followed.

#ICM Tracking
##Create a list of 'your' ICMs
Need a list of ICMs associated with your cases? Whenever you create an ICM or receive a case with an ICM, you can add it to your 'Tracked' list.
1. Open the ICM and select '...More", then pick "Track"
![image.png](/.attachments/image-bc45d18d-bc24-4f1c-b807-fd561306fef4.png)
2. Select 'Watch' and then 'Add tracking'
![image.png](/.attachments/image-32f6d1f5-07f5-406a-960d-88f1dc409e56.png)
This will ad the incident to your 'Tracked Incidents' list.

3. Find your 'Tracked Incidents' list under 'Dashboard' and 'My Tracked'
![image.png](/.attachments/image-0a9a6947-48de-4c50-b393-b3a18153168d.png)

##Receive Emails for ICM updates
1. Open the ICM and select '...More", then pick "Track"
![image.png](/.attachments/image-bc45d18d-bc24-4f1c-b807-fd561306fef4.png)

2. Select 'Subscribe' and then 'Add tracking'
![image.png](/.attachments/image-8a0a9b1a-037b-4a22-a30d-b8e1aa33b867.png)

This will send you emails for any updates to your ICM!

##Check List of Resolved Tracked ICMs
For a list of all your tracked ICMs (including the resolved ones) you can also use the 'Tracked ICMs' UI.

1. Open the 'Tracked Incidents' list under 'Dashboard and 'My Tracked'
![image.png](/.attachments/image-0a9a6947-48de-4c50-b393-b3a18153168d.png)

2. In the bottom, right-hand corner select 'View All'
![image.png](/.attachments/image-a1d46aa8-83b2-4a48-9918-6b4b3e26368b.png)

3. You will be re-routed to a query page which contains a full list of your tracked ICMs, both open and resolved.

#What to Share with Your Customers from ICMs
## What to Share
1. That you have involved and/or are working alongside the product team to understand an issue.
2. Estimates and Timelines - Tell your customer when you will update them next. Give rough/open-ended dates for product team deliverables. Use phrasing like "We expect a deployment within 2-3 weeks." 
This allows for changes in the product team schedule and rollout time.

## What NOT to Share
1. ICM Link/Case Number/The word "ICM" -- Your customers do not have access to this and they do not know what it is. Communicate to your customer that you are involving the product team, or working alongside the product team.
2. Full Backend Logs - Your customers do not need to parse logs-- That is our job. Also, exposing the structure of these backend logs is a security risk. Communicate with your customer what the logs mean/say, not their specific content.