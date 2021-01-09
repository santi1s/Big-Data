# What is an ICM?
An acronym for Incident Management, ICMs are internal tickets we create to involve our product groups in the troubleshooting of an issue.

# What Are ICMs for?
ICMs are not intended to be an escalation, instead the focus is on bug fixes. 

# When do we open ICMs 
In the following circumstances:
- There is evidence of a bug.
- A Subject Matter Expert (SME) or Sr. Engineer indicates an ICM is required.
- A product group members indicates an ICM is required.
- Support Request is Severity 1.

# What is not appropriate for an ICM?
- Questions that can be answered via documentation.
- Questions involving Query.
- Not sure how to troubleshoot.
- Case is beyond your technical skills

All of these questions can be answered by your colleagues or the Subject Matter Experts (SMEs)

# What're the step by step processes for determining when we open ICMs?
1. Engineer is assigned a case, as a team [we review the cases daily in a morning meeting](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fteams.microsoft.com%2Fl%2Fmeetup-join%2F19%253aed61c2064c6941d2988493b7cdce55d7%2540thread.skype%2F1543822558624%3Fcontext%3D%257b%2522Tid%2522%253a%252272f988bf-86f1-41af-91ab-2d7cd011db47%2522%252c%2522Oid%2522%253a%252215695086-ef6b-4241-9a66-0858a24ce131%2522%257d&data=02%7C01%7CAbiodun.Olatunji%40microsoft.com%7Cea158d123cf541185e1208d6eaaeb596%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C636954433662855382&sdata=8elvPuIL5K24qgSmxcLUMA9rdePAhD6vMJStfgZ2pK4%3D&reserved=0) to determine the best course of action.
1. Based on guidance in meeting perform initial investigation: ASC, TSGs, search existing ICMs for similar issues, validate if there is an outage.
1. If after the initial investigation you are unsure of how to proceed, we have a few options:
1. Reach out to colleagues via [Teams](https://teams.microsoft.com/l/channel/19%3aed61c2064c6941d2988493b7cdce55d7%40thread.skype/z%2520-%2520Stream%2520Analytics?groupId=d6c5d9c8-f14e-4cb6-a79a-1874c3b84cb6&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47).
1. If next steps cannot be determined after collaborating with colleagues on teams...
1. Reach out to [SMEs](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/143912/ASA-SMEs). SMEs can provide guidance on next action plan and determine if ICM is needed.
1. If for some reason SMEs are not available, we have a [CSS & PG collab Teams channel](https://teams.microsoft.com/l/channel/19%3aaa42f7f4a4bd4daf88581ddc76faf624%40thread.skype/General?groupId=f4ae42e4-0a6c-44b7-8865-20266713a849&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47) where engineers can share troubleshooting findings with PG and determine if it is appropriate to open ICM. You can ping specific PG Engineers based on their [SME area](https://msdata.visualstudio.com/Azure%20Stream%20Analytics/_wiki/wikis/Azure%20Stream%20Analytics.wiki/1049/Azure-Stream-Analytics-SMEs).

# How do I open an ICM?
From Azure Support Center:
From ICM Site:
Select the corresponding Owner:
- Livesite DRI : Quota increase
Request needs to contain both the SubscriptionId and Region(s) 
Provide reasoning for request and the amount of the increase
- CSS Escalation : Bugs, Feature Requests, RCA 
Use ASC Template & Provide requested details as directed in the template.

# Can I include the PG in emails and conversations?
Product group members should not be involved in customer communications unless:
- The PG has requested direct involvement with the customer.
- CSS (support engineers and SMEs) and Customer have exhausted all their options for determining a solution or next steps. We then reach out to the PG to ask if they would be willing to get involved. Only when the PG consents are they looped into communications.
- It’s a Sev 1.

# How Do I Escalate the IcM to CSAT Impacting?
CSS escalation process:

1.	**Be proactive in noticing when customers are upset**. If a customer is upset and you think the case is leading towards a low-CSAT score, don't let the issue drag on. Escalate the ICM before the case is closed/resolved.
2.	**Email @CSS Azure Stream Analytics SMEs and have an ASA SME review and approve the escalation**. Use this as an opportunity to discuss any ways in which the customer's current low sentiment could have been avoided.
3.	If your regional CSS SME agrees that the case should be escalated, **add [CSAT Impacting] to the title of your service desk case and IcM** and provide additional details in the IcM as to the current customer sentiment, why they feel that way, and what could have been done differently to improve this in the future.
The intent of the [CSAT Impacting] tag is to immediately identify and notify the feature team of a potential low CSAT score pending on a case and they need to engage with the customer directly to ensure the customer is ‘happier’ with the case resolution than they might have been.
4.	Using the email template below, email the Engineering manager and PMs please also include the **ICM owner**. Use your judgement, but along with tagging the IcM as CSAT Impacting and notifying the EM and PMs, if you feel the case situation is exceptionally bad, please do loop the EM and PM directly in with the customer email communications.

**Email template for notifying the PG of a CSAT Impacting ICM:**
 
<div style="border:thin solid black;margin:10px;padding:10px;background-color:#98ff98;">
Email subject: <IcM ID#> : A CSAT Impacting IcM has been assigned to your component area
<br/><br/>
IcM Title:<br/>
ICM ID # : <url link><br/>
SR ID # : <url link><br/>
CSS Engineer contact/s: <list of CSS contacts working on the case>
 <br/><br/>
<ASA EM> & <ASA PM>,
 <br/><br/>
This IcM has been flagged as a potential low CSAT impacting situation with a customer for your area. Your attention is needed to follow this case, ensure it is being handled quickly by the owner, and assist CSS in preventing customer dissatisfaction with the progression of their case. All CSAT Impacting cases will be reviewed during shiproom.
 <br/><br/>
You may be looped directly into customer email communications if you request it or if the CSS engineer believes the customer needs immediate additional attention from the PG.
 <br/><br/>
As the case is resolved, you may also need to provide additional insight to the customer for "by design" issues as you can provide context to the design considerations related to the issue that CSS may not know about. As a representative of the product group, you may need to empathize with the customer and work with them and give them additional information so that they understand their case resolution, or alternatively you may look at evolving the usability of your product area to meet the customer's requests.
 <br/><br/>
Thank you,<br/>
<CSS Engr>
<br/><br/>
</div>