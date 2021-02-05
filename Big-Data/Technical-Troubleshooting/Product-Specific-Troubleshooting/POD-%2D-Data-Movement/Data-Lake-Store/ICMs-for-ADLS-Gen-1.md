**<span style="color:#DF0101;">**Notice ADLS gen1 is due for retirement, for more info check out this**</span> [ADLS gen1 Retirement plan TSG](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/444557/ADLS-gen-1-Retirement-plan)**

[[_TOC_]]

# When to Open an ICM for ADLS Gen 1
1. Have you checked the logs and documentation to confirm expected behavior?
2. Have you checked Data Lake TSGs to see if your issue is covered by any pre-existing TSGs?
3. Have you checked if there is any Azure Outage?
4. Have you searched ICMs for the affected time, to see if there was any ongoing issue?
5. Have you followed up on the ADLS Teams Channel?
6. Have you attended the daily ADLS/ADLA call and/or is the daily call outside of a reasonable time for case resolution? 

If the answer to all these questions is 'yes' and you still need assistance, open an ICM!

# How to Open an ICM to ADLS

Use the ICM page, which the ADLS team has created nice templates for adding information based on issue type.

1. Go to: icm.ad.msft.net
2. Click 'Incidents' and then 'Create'
![image.png](/.attachments/image-34ac4e05-3323-441a-995a-aba216112883.png)
3. Choose 'I'll search for the team to own this incident' then search "Azure Data Lake Store" and choose the 'Store' Team
![image.png](/.attachments/image-622c19f5-4629-49ed-a992-17764e356fe1.png)


4. Set your title using this format: [Case Number][Severity][Premier/Pro/ARR]Short, Descriptive Title
![image.png](/.attachments/image-7215e01d-611e-4059-837f-c9c63dbfe843.png)

5. Choose the correct category for 'Type of Issue'. Please put effort into choosing the correct category.
![image.png](/.attachments/image-23de9746-ea8d-4c72-9c1a-ad4be9d353fd.png)

6. Many categories also have a Sub-Category to choose from. Please choose from that category and be as accurate as possible.
![image.png](/.attachments/image-51a3956a-8ca1-4000-ad16-7a3ef7a04ac8.png)

7. Fill out all required case details (as marked by a red * next to the detail name).
![image.png](/.attachments/image-68841d55-5a35-49f4-8a53-bea3fad7cf55.png)

8. In 'Case Description' provide a succinct and specific description of the issue, all [Critical Information](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&pagePath=%2FBig%20Data%2FTechnical%20Troubleshooting%2FProduct%20Specific%20Troubleshooting%2FPOD%20%252D%20Data%20Movement%2FData%20Lake%20Store%2FICMs%20for%20ADLS%20Gen%201&pageId=286303&_a=edit&anchor=critical-information), and as much [Helpful Information](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&pagePath=%2FBig%20Data%2FTechnical%20Troubleshooting%2FProduct%20Specific%20Troubleshooting%2FPOD%20%252D%20Data%20Movement%2FData%20Lake%20Store%2FICMs%20for%20ADLS%20Gen%201&pageId=286303&_a=edit&anchor=helpful-information) as possible. Be sure not to include any [unwanted information](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki?wikiVersion=GBwikiMaster&pagePath=%2FBig%20Data%2FTechnical%20Troubleshooting%2FProduct%20Specific%20Troubleshooting%2FPOD%20%252D%20Data%20Movement%2FData%20Lake%20Store%2FICMs%20for%20ADLS%20Gen%201&pageId=286303&_a=edit&anchor=information-to-leave-out).

9. At the bottom of the form, please include Support Ticket Id and Subscription Id.
![image.png](/.attachments/image-ee5afc4b-4421-46ad-8e6b-d0e296c182b7.png)

10. Select 'Submit'
![image.png](/.attachments/image-9bb6020f-2c62-4608-af33-84aa137bac3c.png)

11. After you have created your ICM be sure to take your ICM number and include it in your case notes/case description.
![image.png](/.attachments/image-2f6c1a16-9e3d-4b8d-b037-807a7f20e472.png)

## What Information to Add to ICM

An ICM should cover only one error or issue. If your case has multiple errors or issues that need to be addressed, open multiple ICMs.

### Critical Information
1. The ADLS Account Name
2. The specific error message or issue being experienced by the customer.
3. Timestamp or timeframe that the error or issue was experienced.
4. Link to a Jarvis Query that provides the specific requests that experienced the issue/error.
5. If your Jarvis link contains many requests, either narrow the scope to show only the affected requests, or provide a Specific Activity ID from Jarvis Query that points out a single request.

### Helpful Information
1. The ADLS Account Region
2. A Screenshot of the error
3. Logs from the client side with detailed error information.
4. If relevant, a link to a potentially related ICM.


### Information to Leave Out
1. Identifying information like first and last names of any customers. Including screenshots! If screenshots include last names, or other information that would allow you to identify a person outside of a case, black out that information using an editor.

2. Information about other issues or errors -- unless they are relevant. Again, only one issue should be handled per ICM.

# What You Can Share with Your Customer

What kind of information you share with your customer, and how you share it, are important!

All the below are guidelines rather than hard rules, so use your best judgement to determine what is most helpful to your customer.

If you feel uncertain, or if a situation is unclear, ask your peers, SME, Technical Advisor, or even your Product Group colleague for their thoughts about what is appropriate to be shared.

## When You Escalate to the Product Group
**Do Not Use:** "I need the product team's help." or "I'm waiting on the product team."

**Use Instead:** "I am escalating to the product team to address the issue alongside me." or "I am bringing in the product team to look into the issue with me."

**Why:** You need to be the authority for your customer. We want them to trust that you know best and will give them the information they need. Use language that makes it clear you are working with the product team, not waiting for them to give you an answer so the customer trusts that you are still engaged.


## Technical Information
1. **Do not share full logs from the Azure backend!** Looking through logs is our job. Also, sharing full log structure is an Azure security risk!
**Instead** tell the customer you found the information in the logs, but provide them a summary of your conclusions. Only share full logs if they are logs the customer has shared from their side. 

2. **Do not share ICM Number, ICM Link, word "ICM" or ICM verbatim!** None of this means anything to your customer and they don't have access. 
**Instead** you can let them know you're working with the product team to resolve the issue.

3. **Do not share information about how Data Lake Store backend processes.** The product team may discuss technical details about backend processes that caused an issue for your customer. It is likely you do not need to give all this information to the customer.
**Instead** you can tell your customer there was an issue on the backend.
**If** the customer has more questions, or requests an RCA, request an RCA from the product team or ask them what details are appropriate to share.

## Bugs and Fix Timelines

Sometimes there is an issue on the product side that needs to be resolved, and it can take some time to move that fix into deployment. Here are some guidelines.

1. **Avoid the word 'bug'.** Some customers can get sensitive over this word. 
**Instead** say there is an issue on the product side that caused the problem, or that we will be deploying a fix to resolve this issue.

2. **Do not give hard dates for deployment timelines** unless you are specifically advised by a member of the product team. Deployment dates are flexible depending on testing, other features being added to the deployment, and the rollout schedule.
*Instead* give your customer an expected date with a 1-2 week buffer. Something like "We expect a deployment for this fix by <estimate number of weeks>, however I will keep you up to date." If the deployment is earlier than that, so much the better.

If the proposed timeline does not work for your customer, feel free to speak with the product team about your customer's needs, and if there are any workarounds in the mean time.

## Instructions/Steps from Product Group or TSG

If the product team has any steps for resolution, or any questions, or if you are providing steps to your customer from a TSG, follow these guidelines:

1. Read over all steps from TSG or product team and **remove any references to 'customer' and change it to make it more personal to the customer.**
Example:
"Customer should provide client side logs." -> "Please provide us your logs from the client side."

2. Go through steps that the product team or TSG provides to make sure you can understand them and that they will be clear for your customer. If anything is unclear, please ask the product team or your teammates for clarification.

# How to Follow Up with an ICM

Once you have created your ICM, there are several ways to follow up if you need further information:
1. Attend the daily ADLS/ADLA Triage call and bring up your case/ICM for discussion.
2. If your case has not yet been assigned, you can reach out to the on-call engineer for the team by mousing over the envelope next to the owning team name and waiting for the on-call to populate.
![image.png](/.attachments/image-16adb239-6571-4d0c-a251-c198b5304fb5.png)
You can reach out to them directly over teams, send an email that includes the ICM number, or @ them in a case note to bring their attention to the case.
![image.png](/.attachments/image-6ba1b6f2-0ba2-40b8-b99c-e444a395db03.png)
![image.png](/.attachments/image-4d352897-96f1-433e-9c9f-d10a27420916.png)
If you follow up using an email, please make sure any additional troubleshooting conversation is added to the ICM notes so it can be tracked later.

3. If your case has been assigned, you can follow up directly with the case owner. You can find the case owner by looking in the title box.
![image.png](/.attachments/image-dd6dbbee-365b-4ef4-a53d-7f16e9449d5e.png)
You can reach out to them directly over teams, send an email that includes the ICM number, or @ them in a case note to bring their attention to the case.
![image.png](/.attachments/image-6ba1b6f2-0ba2-40b8-b99c-e444a395db03.png)
![image.png](/.attachments/image-4d352897-96f1-433e-9c9f-d10a27420916.png)
If you follow up using an email, please make sure any additional troubleshooting conversation is added to the ICM notes so it can be tracked later.


#Quick Reference
1. Create ICM by going to icm.ad.msft.net, going to Incidents, and Create. 
2. Search for the Azure Data Lake Store product and select the 'Store' team.
3. Set your title using this format: [Case Number][Severity][Premier/Pro/ARR]Short, Descriptive Title
4. Choose most specific/accurate problem category and sub category, and fill in all required data. Also fill in 'Subscription Id' and 'Support Ticket Id' at the bottom of the form.
5. 'Submit' and include your ICM number in your Service Desk case.

<br>
<br>
<br>
<br>

<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#bfbfbf;background-color:#f4f4f4;border-width:3pt; 
vertical-align:top;width:8in;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  
