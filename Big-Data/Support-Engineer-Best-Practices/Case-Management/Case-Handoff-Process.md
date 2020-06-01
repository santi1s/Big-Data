


<center>
<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#B40404;border-width:5pt; 
vertical-align:top;white-space: nowrap;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

<b> Note:</b>
This process is <b> only </b> for <u> in-depth </u> queue. <span style="color:#DF0101;">(Not for ARR queue)</span>

</td>
</tr>
</table>
</center>

[[_TOC_]]

# Handoff Process

## Handoff Between Regions
<center>

![Hand Off Chart.jpg](/.attachments/Hand%20Off%20Chart-72acb208-2da3-4052-b733-eb22178db818.jpg =900x500)

![image.png](/.attachments/image-c4daa0d7-455f-4625-bfaa-552dd1e6c787.png =900x305)
![image.png](/.attachments/image-b776ef3b-b7ee-439f-a767-e39b181d6429.png =900x150)

[![image.png](/.attachments/image-d7244b2b-c639-4657-a9db-58d1438f5e2a.png =250x100)](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/331739/Case-Severity-Management) [![image.png](/.attachments/image-edc4d915-936d-4bbc-8230-c838d481a8fd.png =250x100)](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/306262/Case-Handoff-Process?_a=edit&anchor=process-for-critical-%2F-24*7-cases)

</center>



## Process for Critical / 24*7 Cases
1. Log good case notes before beginning handoff process. You may use our [Notes Guides](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&_a=edit&pagePath=%2FBig%20Data%2FSupport%20Engineer%20Best%20Practices%2FCase%20Management%2FCase%20Handoff%20Process&pageId=306262&anchor=hand-over-notes-template) as a template. Your notes should give the next engineer a full picture of the case even if a warm handoff cannot occur.
 Follow [Case Severity Management](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/331739/Case-Severity-Management?anchor=when-to-downgrade-the-severity-from-a-to-b%2Cor-uncheck-24x7%3F) to verify if the case is qualified as Sev A and customer is available to continue working 24*7.
2. Add <Need APAC/IST/EMEA/US SE> prefix per customer's region/request to the internal case title.
3. Add the case to the [Case Transfer](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fteams.microsoft.com%2Fl%2Fchannel%2F19%253a9ccd3c2acbbd4e729c66270c4383bf4b%2540thread.skype%2FCase%252520Transfer%3FgroupId%3Dd6c5d9c8-f14e-4cb6-a79a-1874c3b84cb6%26tenantId%3D72f988bf-86f1-41af-91ab-2d7cd011db47&data=02%7C01%7CShijie.Li%40microsoft.com%7C4ad1ddc4752f41cedf5008d6e8a6bab4%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C636952200400824869&sdata=J%2FyTlcWqA30oBgiwx0D74TByJGxQ69D%2FuYgrFTTvaf0%3D&reserved=0) list. You can find the link to the list at the top of the page:
![image.png](/.attachments/image-f96e38aa-f73f-4483-93ad-c859dd03eec3.png)

4. Attend the [handoff meeting for your region](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&pagePath=%2FBig%20Data%2FSupport%20Engineer%20Best%20Practices%2FCase%20Management%2FCase%20Handoff%20Process&pageId=306262&_a=edit&anchor=region-hand-off-meetings) and follow instructions.
a. If there is **<u>no</u> handoff meeting** (when SME in **<u>receiving</u> regions are on weekends**), jump to step e.
b. If you **cannot attend the handoff meeting** (because it is outside your working hours or otherwise) find a teammate who can hold/monitor your case and attend the meeting in your place.
c. If you **cannot find a teammate who can handle the case before the handoff meeting**, reach out to your [regional handoff SME.](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&_a=edit&pagePath=%2FBig%20Data%2FSupport%20Engineer%20Best%20Practices%2FCase%20Management%2FCase%20Handoff%20Process&pageId=306262&anchor=region-handoff-smes)
d. **<u>Only after</u> you have aligned with regional handoff SME**, perform step e:
e. <span style="color:#DF0101;">At the end of your region's hours, **transfer back** the case to queue, </span> and notify the DM  sqldmmdt@microsoft.com for reassignment.
**Reference Email Subject:**
Big Data DM, please reassign <Prem/Pro> <Severity> <case number> to <APAC/IST/EMEA/US SE> - Skill: <product skill>



5. <span style="color:#DF0101;">**Remain with the case until handoff to another engineer can occur.** </span>

### Region Handoff Meetings

- [APAC->IST/EMEA HO meeting](https://teams.microsoft.com/l/meetup-join/19%3ameeting_YzljMWRjOGEtN2Q1OC00YzM2LTk2YWYtN2E1ZWM5ZTkwYzMw%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%223ce641ba-81bc-490f-9eb5-c82eff08c178%22%7d) 7:30am UTC(15:30 UTC+8)
-  [US->APAC HO meeting](https://teams.microsoft.com/l/meetup-join/19%3ameeting_NWIyNzU2MmYtOTkxYy00NTY3LWEyNjAtNmY1YTgwNzc5MzBk%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%2218d7429d-917b-4bba-881a-b254f61f0976%22%7d) Time: 4:30pm PST
-  [EMEA->US HO meeting](https://teams.microsoft.com/l/meetup-join/19%3ameeting_NmQyZDliMTUtYzlmNi00YTc4LWI5NGQtOTY0NjgxNjZhYzU0%40thread.v2/0?context=%7b%22Tid%22%3a%2272f988bf-86f1-41af-91ab-2d7cd011db47%22%2c%22Oid%22%3a%2292be5ebc-4e43-4ea3-a98d-34ff4061dc92%22%7d) Time: 8:30am PST

### Region Handoff SMEs

<b>APAC:</b> Tracy Zhang
<b>IGTSC:</b> Shyam Simha
<b>EMEA :</b>Ryszard Gawron
<b>US:</b> Prashanth Madi or Whitney Henderson

## Process for Non-24*7 
1. Confirm this case is a good candidate for handover. Has the customer specifically requested a handoff? If not, does it really need to be transferred? 
2. Log good case notes before beginning handoff process. You may use our [Notes Guides](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&_a=edit&pagePath=%2FBig%20Data%2FSupport%20Engineer%20Best%20Practices%2FCase%20Management%2FCase%20Handoff%20Process&pageId=306262&anchor=hand-over-notes-template) as a template. Your notes should give the next engineer a full picture of the case even if a warm handoff cannot occur.
3. Add <Need APAC/IST/EMEA/US SE> prefix per customer's region/request to the internal case title.
4.  Add the case to the [Case Transfer](https://microsoft.sharepoint.com/teams/BigDataAnalyticsPOD/Lists/Transfer/AllItems.aspx?p=11) list. You can find the link to the list at the top of the page:
![image.png](/.attachments/image-f96e38aa-f73f-4483-93ad-c859dd03eec3.png)
5. **If the [handoff call](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&pagePath=%2FBig%20Data%2FSupport%20Engineer%20Best%20Practices%2FCase%20Management%2FCase%20Handoff%20Process&pageId=306262&_a=edit&anchor=region-handoff-meetings) is within your hours**, attend the handoff call to move this case first. 
If it is not within your hours, <span style="color:#DF0101;">**transfer the case back to queue.**</span>
6. Send email to sqldmmdt@microsoft.com to ask for reassignment.
	**Reference Email Subject:**
	Big Data DM, please reassign <Prem/Pro> <Severity> <case number> to <APAC/IST/EMEA/US SE> - Skill: <product skill>

## Flow Chart

<center>


::: mermaid
graph TD
    A(Add Good Case Notes <br> & <br> Update Internal Title) --> B(Add Case to Transfer List <br>Transfer List is not the queue!<br>See below sections for transfer list.)
    B --> C{Is there a <br> handoff call?}
    C -->|Yes| D{Can you attend?}
D -->|Yes| F(Attend Handoff Call <br> and Follow Instruction There)
D -->|No| I{Can a <br> teammate take <br> until handoff call?}
    C -->|No| E(Transfer to Queue <br> Notify DMs)
E -->|Critical Case| H(Stay with case until <br> there is a new case owner.)
I-->|Yes| J(Transfer to Teammate)
I --> |No| K(Contact Handoff SME)
K --> L(You may need to remain with an <br> active/critical case until an <br> owner can be found.)
    style D fill:#f9f,stroke:#333,stroke-width:4px
 style C fill:#f9f,stroke:#333,stroke-width:4px
 style I fill:#f9f,stroke:#333,stroke-width:4px
:::

</center>

## Collaboration Handoff
1. Talk to your case owner about whether they need continued input from your team.
If they do, follow the [non 24x7 process](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/306262/Case-Handoff-Process?_a=edit&anchor=process-for-non-24*7)  or the [24x7](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/306262/Case-Handoff-Process?_a=edit&anchor=process-for-critical-%2F-24*7-cases) process based on case criticality.

## Long-Running 24*7 Cases

For cases that are going around and around the globe, there is a big risk of loss of information and good communication, as well as an increased workload across engineers.

**If possible, limit the number of engineers that work on the case to streamline troubleshooting and communication, by following the below process.**
### Do you have a Long-Running 24*7?

A Long-Running Case is any Sev A and B 24x7 case(Premier, Professional, Unified) - that need to be transferred between the regions and have traveled fully around the globe and come back to their original region.

OR

A customer has requested to work in 2 different timezones, rather than 24*7, but transfers are ongoing.

### Process
1. Talk with your customer to determine if they would like to continue with global engineers, or if it makes more sense for the case to remain at high-severity, but remain with a single regional engineer who can work with the customer during their business hours.

1. If the customer wants to continue working globally, determine a single owner from each region - it is a better experience for the customer to work with the same contact person rather than work with a new engineer every day, and reduces review work since all engineers are familiar with the case.
If the case has already moved around the globe, these can been the engineers that have already owned the case, or escalation engineers depending on need/severity.

2. Current/original owning engineer create a Teams Chat with each regional case owner to streamline communications.

3. Owning engineer should directly discuss direct handoff with next region to confirm engineer in next region is available. (ie - EMEA->NA, NA->APAC, APAC->EMEA)

4. At the end of shift, current owning engineer will:
**a.** Update [Case Notes](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&_a=edit&pagePath=%2FBig%20Data%2FSupport%20Engineer%20Best%20Practices%2FCase%20Management%2FCase%20Handoff%20Process&pageId=306262&anchor=hand-over-notes-template)
**b.** Write in Teams chat that shift is ending and include a short summary of any critical updates.
**c.** If possible, perform a warm handoff to the next engineer.
**d.** If not possible, transfer directly to next engineer or move to queue and email DMs to indicate who the case should be transferred to.
	
**For the Weekend/Outside of Normal Transfer Engineer Shifts:**	
1. Discuss with your customer if they need a Point of Contact/Continued support over the weekend/shift, or if they are able to pick up again at the next earliest shift.
2. If a point of contact is needed, follow normal weekend handoff procedures for first weekend, and if it continues to another weekend, use the same engineers the following weekend if at all possible.

	
## Hand Over Notes Template

### Notes Tool
You can generate notes based on [Handover Tool](http://bigdatapod.azurewebsites.net/)

### General Template

<details>
  <summary>Click Here to Expand Notes Template</summary>
<br>

Summary 
\=============
_<Short description that outlines the full issue at a glance. And a brief outline of what you and/or the customer have just done and your current conclusions.>_

Next Steps:
\=============

Cx:
1. _<List of next steps that the customer will take.>_

MSFT:
1. _<List of next steps that case owners or collaborators will take.>_

ICM or Partner Ticket
\=============
_<If you have an ICM or product team ticket or a ticket with a partner team, add it here! If not, you can leave this section out.>_

Research:
\=============

_<Any articles, logs, or screenshots you referenced during your troubleshooting.>_

Ticket's checklist
\=============

Customer Reachable?:Yes/No
Waiting for RCA?:Yes/No
Customer accept English Support?: Yes/No
Now the issue is pending on?: PG/CSS/Customer
IcM ID?:
<Reason for Critsit:>
</br>
</details>


# Handoff During On Call

Handoff for On-Call can follow normal case handoff proceedures on the weekend or a normal business days.

Handoff case at the end of your shift.

Shift times by region are as follows:

**EMEA** - 01:00 - 08:59 PST (8:00 - 15:59 UTC)
**NA** - 09:00 - 16:59 PST (16:00 - 23:59 UTC)
**APAC** - 7:00 - 16:00 UTC+8 (23:00 - 8:00 UTC)


# Handoff for Planned OOF

## One Week or Less

Handoff is only necessary for critical or active cases, or cases where customers would like to meet during your time away. If you need to handoff cases for this time.
1. Log good case notes before handoff. You may use our [Notes Guides](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&_a=edit&pagePath=%2FBig%20Data%2FSupport%20Engineer%20Best%20Practices%2FCase%20Management%2FCase%20Handoff%20Process&pageId=306262&anchor=hand-over-notes-template) as a template. Your notes should give the next engineer a full picture of the case even if a warm handoff cannot occur.

2. Reach out to teammates to see if they are able to pick up any of the cases and perform a warm handoff.

3. Please **do not** just push batches of your case back to queue even if you are unable to find teammates to assist you. In this case, please reach out to your TA to inform them of any cases that will need help during your absence.

4. You need to take back your own case after your OOF.

5. Make sure your [automatic replies](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/277566/Time-Away-Vacation-and-Sick-Days?anchor=automatic-replies) are set so other teammates and customers can get assitance in your absence. 

## Longer than a Week

For longer vacations, please close what cases you can and make sure all your customers are aware of your absence.

1. For critical or very active cases, let your customers know you will be away and that you will be handing their case to a teammate. If at all possible, find a teammate who will be able to take over the case, and provide a warm handoff.

2. For slower cases where you are waiting on the customer or product team, and don't expect any update will be needed until after your return, please let the customer know of your absence and confirm if they are alright to have an update on your return, or if they would prefer to be handed off to another engineer in the meantime. If any of these cases need handoff, find a teammate who will be able to take the case and provide a warm handoff.

3. Please **do not** just push batches of your case back to queue even if you are unable to find teammates to assist you. In this case, please reach out to your TA with a list of cases, and for each case including number, product, brief description, and brief status.

4. You need to take back your own case after your OOF.

5. Make sure your [automatic replies](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/277566/Time-Away-Vacation-and-Sick-Days?anchor=automatic-replies) are set so other teammates and customers can get assistance in your absence. 

##Phone Numbers for Immediate Support By Region
For your away messages, feel free to include any/all numbers for our supported regions so any of your customers can get support while you are out.

India
Premier : 1800-425-5666/080-6000-5666
Professional : 1800-419-5666

US
Premier : +1 800 936 3100
Professional : +1 800 936 5800 / +1-800-936-4900

EMEA
Premier : +44-844-800-8338
Professional : +44-844-800-2400



# Handoff for Unexpected OOF

## Short-Term Unexpected OOF
1. For critical cases, reach out to a teammate for hand-off or inform a TA of your sudden absence and let them know what critical cases will need handoff. If unable to contact teammates or TA, **send the case back to the queue**. 
If unable to access case to send it back to the queue, please inform your manager or TA of your sudden absence and that there is a critical case that needs to be transitioned.

2. For non-critical cases that need handoff, please reach out to your teammates or TA with a list of the cases that will need assistance in your absence.

3. Make sure your [automatic replies](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/277566/Time-Away-Vacation-and-Sick-Days?anchor=automatic-replies) are set so other teammates and customers can get assistance in your absence. 

## Long-Term Unexpected OOF

1. Contact your manager to let them know you will be unexpectedly oof.
2. Contact your TA to let them know you will be unexpectedly oof so they can redistribute cases to your teammates.
3. If possible, provide TA with a prioritization of cases, or a list of which cases are critical/very active, so the TA can prioritize ownership.
4.  Make sure your [automatic replies](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/277566/Time-Away-Vacation-and-Sick-Days?anchor=automatic-replies) are set so other teammates and customers can get assistance in your absence. 
----
#Dos and Dont's of Case Transfer

##Do

<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#088A08;border-width:5pt; 
vertical-align:top;white-space: wrap;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

- Accept ownership of cases assigned to you. Take full accountability to meet SLA and provide quality responses.
- Log clear case notes in Service Desk for every case, but especially cases to transfer.
- Change the case internal title to show the clear reason for transfer if you will move the case back to the queue.
- Double check with customer whether customer really needs to continue the troubleshooting with next shift engineer. As them if they want to proceed with another engineer, or would prefer to pick up during your next working hours. 
- If a customer would prefer to work in a different region, transfer to that region as soon as possible.
</td>
</tr>
</table>

## Don't
<table border="1";border-color:#A2E1A2;border-width:5pt>
<tr>
  <td style='border-style:solid;border-color:#B40404;border-width:5pt; 
vertical-align:top;white-space: wrap;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

- Don’t transfer your cases back to queue when you take leave, ask your team (in the same region) internally to back up you for hot cases, and set correct OOF auto-reply.
- Don’t transfer the case back to queue, if the solution has been delivered or the issue was resolved, and just pending customer’s confirmation for case closure

- Don’t reject case assignment without your TA or manager’s approval

- Don’t suggest customer to raise the case severity only for quick resource allocation purpose


</td>
</tr>
</table>



----

