<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#f64e4e;background-color:#f9cccc;border-width:3pt; 
vertical-align:top;width:8in;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

<b> This page has an open work item! </b>
If you would like to contribute, please follow up here:
#5724
</td>
</tr>
</table>

[[_TOC_]]
<center>

::: video
# Troubleshooting Training Video

<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/a7eba3ff-0400-a936-d9af-f1eaaf4c64a6?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>

:::

</center>

<details>
<summary>Click here for Video Timestamps</summary>

**00:00** - Introduction
**02:09** - Kinds of Issues
**04:15** - How to Think Through a Break/Fix Problem
**05:06** - Define the Problem
**09:44** - Summarize/Describe the Problem
**18:19** - Consider Possible Root Causes
**23:34** - Where to Go When You Don't Know
**24:15** - Flow Chart of Information and Help!
**25:00** - Case Description and Error Message
**27:59** - Azure Support Center (ASC)
**33:10** - Troubleshooting Guides (TSGs)
**35:04** - Azure Documentation
**37:21** - Internal Logs
**40:00** - The Internet!
**42:29** - Triage Calls/Emails
**44:24** - Draw it out!
**45:20** - Reproducing the Error
**49:20** - AVA
**51:50** - TA/SME Review
**53:34** - ICM/Product Team
**56:37** - Troubleshooting Flow Review
**57:50** - Who to Go to for Help
**58:58** - Finish Hypothesizing Root Cause
**1:03:00** - Most Likely Root Cause
**1:07:14** - Evaluating Difficulty
**1:10:13** - Evaluating Danger
**1:11:33** - Choose Next Steps
**1:14:13** - Test Your Solution
**1:15:47** - Testing with a Customer
**1:19:06** - Break/Fix Troubleshooting Summary
**1:21:00** - Advisory Cases
**1:24:40** - Steps for Advisory Cases
**1:26:06** - Advisory Cases for Premier Customers
**1:27:58** - Advisory Cases for Professional Customers
**1:29:19** - Microsoft Partners
**1:30:56** - Advisory Case Summary
**1:31:34** - Troubleshooting Case Summary

</details>

# Troubleshooting a Break/Fix Case

Break/Fix Cases are the majority of the cases you will see as a support engineer. **A break/fix issue is an issue where the product is not behaving as expected and is throwing an error, not operating as anticipated, or producing unexpected results.**

For Example:
1. _When running my script, I am getting a 403 Forbidden error…_
2. _The portal should do X, but instead I am seeing Y behavior._
3. _My job used to work, but is now failing with this error…_

Even if you aren't sure how to understand or get started troubleshooting an issue, you can use the below steps to troubleshoot **any** case.

<center> <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Use this process even when you have lots of cases and are feeling rushed.</span>

**Maybe especially when you are feeling rushed/overwhelmed.**
This process will help you solve your cases more quickly. Though it seems like a lot of steps, you will get faster with experience and this process will make next steps clearer for all your cases.
</center>



## Think Through the Problem

### 1. Define the Problem

<details>
<summary>Click here to expand or collapse this section</summary>

<br>

When you first begin to troubleshoot a case, first you should fully define the issue by considering the <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">5 W Questions</span> for each individual issue:

1. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Who</span> **is affected by the problem?**
_Think about which users/groups/identities are affected and which are not._
2. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">What</span> **are the symptoms?**
_What is the full error message, or what is the full behavior that is being seen in your customer's environment?_
3. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">When</span> **does the problem occur?**
_What is the timestamp of the latest occurrence? Has there always been an issue, or did this scenario work as expected before? When did the issue first occur? When did it last occur?_
4. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Where</span> **does the problem occur?**
_Are only specific machines affected by the problem? What components/resources are involved? Storage? Azure Network? Custom Scripts? Third Party Tools?_
5. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Why</span> **is this important to solve the problem?** 
_If you understand how a problem is affecting your customer and what a problem is preventing your customer from doing, you may be able to think of workarounds-- other ways they can perform their needed tasks while you troubleshoot the issue._

</details>

### 2. Summarize/Describe
<details>
<summary>Click here to expand or collapse this section</summary>

<br>

<center>
<span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Write a Statement</span> 
</center>

Using the answers from your **5 W Questions** in the section above, write a 1-3 sentence summary of your issue. This statement should be brief as possible, but describe the entire issue. Focus on what **is** the problem as well as what **is not** the problem.

For example, only one user is affected by this issue and other users are not seeing a problem.
This issue only occurs intermittently and is not consistant.

Either send this summary to your customer, or discuss it with them on a call to make sure that your understanding of the problem is complete and correct.

This way everyone will be on the same page about what issue you are troubleshooting and its symptoms.

<center>
<span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Draw the Scenario</span> 
</center>

Mostly using the **Where** and **Who** questions of the **5 W Questions** in the section above, draw a flow chart/diagram showing flow of data, or who is interacting with what, and what could be between them.

You'll use this chart to identify all the technologies/resources/possible break points in the full process that your customer is following. You can then think through how each of these pieces could fail, and how you can check for the health of each of these pieces. This will help you to identify **where** the issue is occurring.

<center> For Example: </center>

![image.png](/.attachments/image-c109b363-6960-4ed9-801e-29ceea07cef7.png)

</details>

### 3.  Create Hypothesis
<details>
<summary>Click here to expand or collapse this section</summary>

<br>

To start hypothesizing about the root cause, think about <span style="color:#347C17;">**COULD BE**</span> affected, but <span style="color:#DF0101;">**IS NOT**</span> 
Then compare the <span style="color:#DF0101;">**COULD BE but IS NOT**</span> scenario with the <span style="color:#347C17;">**COULD BE and IS**</span>.

Also think about **when** the issue occurred. 
Were any changes made between when it was working and when it began failing?

**What do you mean by COULD BE and <span style="color:#347C17;">IS</span> and <span style="color:#DF0101;">IS NOT</span>?**

<span style="color:#347C17;">**COULD BE**</span>
If one problem is occurring, think about what other symptoms your user might be seeing. These symptoms your user might be seeing are your COULD BE symptoms. You'll need to verify these COULD BEs with your customer.

For example: If one user is having a problem accessing data other users COULD BE having the same problem.
Verify with your customer if they are!

<span style="color:#347C17;">**IS**</span>
Take your COULD BEs and verify them with your customer, and any of these symptoms that ARE occurring are your IS symptoms.

_**For example:** If one user is having a problem accessing data other users COULD BE having the same problem, if your customer tells you that YES, another user IS having a problem accessing the data, then this other user is a COULD BE AND IS._

<span style="color:#DF0101;">**IS NOT**</span>
Take your COULD BEs and verify them with your customer, and any of these symptoms that ARE NOT occurring are your IS NOT symptoms.

_**For example:** If one user is having a problem accessing data other users COULD BE having the same problem, if your customer tells you that NO, another user IS NOT having a problem accessing the data, then this other user is a COULD BE AND IS NOT._

**So you have your COULD BEs, IS, and IS NOT statements. What's next?**

Take your <span style="color:#347C17;">**COULD BE and IS**</span> and <span style="color:#DF0101;">**COULD BE and IS NOT**</span> statements and think about what's different between these scenarios. These differences are the places or settings where the issue is likely occurring.

<center>

**Next, take your COULD BEs and your differences and think about what issues or settings could possibly be causing these problems.**

**These are your possible root causes.**

**Don't limit yourself here, write down anything you think might cause the issue. We'll narrow it down in the next steps.**

</center>

</details>

### 4. Choose Next Steps
<details>
<summary>Click here to expand or collapse this section</summary>
<br>

To choose what data to gather next, or which potential solution to pursue, we'll go through four evaluation steps:

**1. Evaluate Most Likely Root Cause**
Look at all the possible root causes you created in the last step and consider your **IS** and **IS NOT** statements. For each root cause consider how well it explains both **IS** and **IS NOT** and rank it based on how well it does. Your best fitting are your **MOST LIKELY** your least fitting are your **LEAST LIKELY**

**2. How Easy Is It To Gather Data?**
If you need further information to create a IS or IS NOT statement, or if there is information you need to confirm if a possible root cause is your true root cause, list out each piece of information or step you would need to take to confirm.

Then rate each of these steps or pieces of information for how **easy** they are to execute.
To determine 'ease' consider:
1. If you and your customer know how to execute the step or gather the data.
2. How long it will take to execute the step or gather the data.
3. What kinds of technical skills, if any, are needed to execute the step.

**4. How Dangerous Is It To Gather Data?**
For each of the above steps, also evaluate how **dangerous** it is to a customer's environment to gather a piece of data or execute next steps.

Will a step expose private data? Could a step cause further issues in the customer's environment? 

**5. Evaluate and Choose**
If you're not sure which steps to take next, take your ratings from steps 1-4 and write them side by side to determine which most likely/easiest to confirm root cause.

Start with those most likely, easiest, and least dangerous steps. These will eliminate possibilities more quickly and leave you with a solution, or more clear next steps.

</details>

### 5. Test Solutions/Execute Next Steps
<details>
<summary>Click here to expand or collapse this section</summary>
<br>
Once you have chosen 

![image.png](/.attachments/image-12856a5d-a5d9-4222-9366-f5dc4bab3488.png)
</details>

## Example Problem

<details>
<summary>Click here to expand or collapse the example problem.</summary>

**Problem Description:** “I am getting an access error trying to access my data through the portal…”

**1. Define the Problem using the 5 W Questions** - Here are some example W questions to help resolve the above issue.

1. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Who</span> - Do all users see this error, a subset, or just you?
2. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">What</span> - What is the full error message?
3. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">When</span> - Do you see this error every time you attempt to access the data? When was the last time you saw this error? Did this work in the past? When did it stop?
4. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Where</span> Do you only see this error through the portal? Have you tried with a script or another tool?
Do you see the same error if you use InPrivate browsing?
5. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Why</span> - What do you need to access the data for? What is this error preventing you from doing?

_Customer Responses to these 5 W Questions_

<i>

1. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Who</span> - Only one user is seeing this error.
2. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">What</span> - “You do not have access. An authorization failure occurred.  This request is not authorized to perform this operation. RequestId:43cca8bf-f01e-0027-7315-431f99000000”
3. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">When</span> Yes, I see this error every time I attempt to access the data through the portal. Last time: Time:2020-06-15T13:04:15.8727806Z. This used to work. Error started in Mid-March.
4. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Where</span> Only see error through the portal. ADF and Databricks work fine. I see the same error using InPrivate Browsing
5. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Why</span> - I manage the data through the portal. It is easier to click through than list the data using a script.


</i>

**2. Describe/Summarize the Problem**

1. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Write a Statement</span>
_Using your problem definition questions, write out a brief statement that covers what the issue <span style="color:#347C17;">IS</span> and what it <span style="color:#DF0101;">IS NOT</span>_
**“Since mid-March, <span style="color:#347C17;">one customer</span> is having <span style="color:#347C17;">consistent</span> trouble attempting to access the data <span style="color:#347C17;">through the Portal</span>. Accessing the data through a <span style="color:#DF0101;">script</span> works just fine, and <span style="color:#DF0101;">other users</span> are also able to access the data as expected.”**


2. <span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Draw It Out</span>
_Think about where your data/users are starting, where it is going to, what path they are using to do that, what pieces are in between them, and what is supposed to happen._

![image.png](/.attachments/image-3d5b6d85-d51b-46ed-9106-e02f21c51580.png)

**3. Hypothesize about Root Cause*
_Think about what **COULD BE** the issue, and **IS**, and what **COULD BE but IS NOT** then compare the differences between these scenarios. Then think about what root causes fit those differences._

<span style="color:#347C17;">COULD BE and IS</span> - Single User Having Trouble Accessing Data from Home
<span style="color:#347C17;">COULD BE and IS</span> - Trouble Accessing Data Through Portal
<span style="color:#347C17;">COULD BE and IS</span> - Consistent Issue
<span style="color:#DF0101;">COULD BE and IS NOT</span> - Other Users Can Access Data
<span style="color:#DF0101;">COULD BE and IS NOT</span> - Script is also able to access data
<span style="color:#DF0101;">COULD BE and IS NOT</span> - Intermittent Issue

**Differences in Scenarios Between IS and IS NOT:**
- Location of Access (Different Machines)
- Different Networks
- Different Users Authenticating
- Different Command Used in Portal and Script

</details>

## Where to Go When You Don't Know Where to Look Next
![image.png](/.attachments/image-6c139cb9-e882-468c-90c9-cd6579767e1b.png)

### Read Case Description/Error Message

### ASC (Azure Support Center)

### Internal Logs

### Documentation

### Triage Calls/Emails

### TSGs (Troubleshooting Guides)

### Check the Internet

### Draw It Out

### Reproduce in Your Environment

### AVA for Case Assistance

### Request a Case Review

### ICM - Product Team Case

## Who to Contact When You Need Help

| **Team Role** | **Technical/Troubleshooting Help Needed** | **Case Handling/Customer Management Help Needed** | 
|-------------------------------|------------------------------------|--------------------------------------------|
| **Peer**  |                :white_check_mark:                    |   :white_check_mark:                                         |
|**Technical Advisor (TA)** |:white_check_mark:|:white_check_mark:|
| **Subject Matter Expert (SME)**|:white_check_mark:||
|**Escalation Engineer (EE)**|:white_check_mark:|:white_check_mark:|
|**Triage Meeting**|:white_check_mark:||
|**AVA**|:white_check_mark:||
|**Product Group Teams Chat**|:white_check_mark:||
|**Technical Account Manager (TAM)**||:white_check_mark:|
|**Manager**||:white_check_mark:|



## Troubleshooting with a Customer

## Quick Reference
To troubleshoot a Break/Fix Case:

1. Define the Problem
2. Summarize/Describe the Problem for Understanding
3. Create a Hypothesis for Root Cause
4. Use the ‘Where to Go’ flow chart to find resources
5. Evaluate Most Likely Root Cause, and Ease of Data Gathering
6. Summarize Information from Step 5 to Choose Next Steps
7. Execute Next Steps/Test Solution
6. Start Process Again for New Errors


# Troubleshooting an Advisory Case

## What Information We Can Provide

## What to Tell Your Customer

## Where to Get Help 

### Premier Customers

**Reach out to Technical Account Manager (TAM) for assistance.**

Tell them what kind of information your customer is requesting that is outside your ability to provide, or what kind of assistance the customer needs.

Ask if there is a **Cloud Solution Architect (CSA)** or &&PFE (Premier Field Engineer)** already working with the customer who can help address their questions.


### Professional Customers
Be clear about what information you can provide. Involve other teams where possible. Let your customer know when you feel uncomfortable answering their questions and where they can go next.

**So where can they go next?**
1. Our Azure Documentation to Learn What Tools Work Best for Their Environments
2. Best Practices - Azure Documentation has Best Practices and Example Architectures to Help Make Decisions
3. Testing - Testing Tools Out in a Demo Environment Will Help Confirm if Azure Meets Customer Benchmarks
4. Microsoft Partners - If They Need More Assistance Building Out an Environment

### What's a Microsoft Partner?

Microsoft Partners are companies that have a relationship with Microsoft and deliver Microsoft product- based solutions to our customers!

Some partners build out and manage customer environments.

Some partners can come alongside to help develop business architectures.

They can provide more assistance/development than resource support can.

You and your customers can find partners here:
**https://partner.microsoft.com**

<span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Remember</span>: Legally, we can't recommend a specific partner. Customers need to choose and Review for themselves.

## Quick Reference
To Troubleshoot an Advisory Case:
1. Confirm with your customer what information they need.
2. Be clear about what information you can provide.
3. Involve other resources/teams to answer questions outside your expertise.
4. When you can’t provide information, tell your customer where they can go.
