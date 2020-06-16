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

<details>
<summary>Click here for Video Timestamps</summary>

**00:00** - Introduction
**02:09** - Kinds of Issues
**04:15** - How to Think Through a Break/Fix Problem
**05:06** - Define the Problem

</details>

</center>

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

<center>
<span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Write a Statement</span> 
</center>
Using the answers from your **5 W Questions** in the section above, write a 1-3 sentence summary of your issue. This statement should be brief as possible, but describe the entire issue.

Either send this summary to your customer, or discuss it with them on a call to make sure that your understanding of the problem is complete and correct.

This way everyone will be on the same page about what issue you are troubleshooting and its symptoms.

<center>
<span style="color:#DF0101;text-decoration: underline;font-weight: bold; ">Draw the Scenario</span> 
</center>

Mostly using the **Where** and **Who** questions of the **5 W Questions** in the section above, draw a flow chart/diagram showing flow of data, or who is interacting with what, and what could be between them.

You'll use this chart to identify all the technologies/resources/possible break points in the full process that your customer is following. You can then think through how each of these pieces could fail, and how you can check for the health of each of these pieces. This will help you to identify **where** the issue is occurring.

</details>

### 3.  Create Hypothesis
<details>
<summary>Click here to expand or collapse this section</summary>


</details>

### 4. Choose Next Steps
<details>
<summary>Click here to expand or collapse this section</summary>


</details>

### 5. Test Solutions/Execute Next Steps
<details>
<summary>Click here to expand or collapse this section</summary>


</details>

## Example Problem

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

# Troubleshooting an Advisory Case

## What Information We Can Provide

## What to Tell Your Customer

## Where to Get Help 

### Premier Customers

### Professional Customers

### What's a Microsoft Partner?

## Quick Reference