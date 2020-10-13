[[_TOC_]]

#How to Request Internal Subscription

Create an Account Internal Azure Subscription: https://microsoft.sharepoint.com/teams/azureinternal/CSSMgmt/SitePages/Home.aspx 
1. Go to https://azuremsregistration.azurewebsites.net/Default.aspx​ and click on New Registration. The defined parameters for these accounts are:

- Account type: Internal billable account
- AccountOwnerID: youralias@microsoft.com
- Property Service Name: Microsoft Azure Internal Consumption
- PC Code: P10175065
- PFAM: 000
- Program name (do not create a new program name)
- CSS – Azure
- Limit is $400 per month – this is the correct option for most users
- CSS – Azure High Usage
- Usage would be $800+ per month – NOTE: this is only used in rare scenarios. Users will need to email a detailed justification to daisukey prior to approval. Please discuss with your direct manager prior to submitting this request, as it is generally unlikely that it's truly necessary.
- Paid Support: Developer
- Paid Support PC Code: P10175065
- Paid Support Program name: CSS - Azure
- Finance contact: Charusa
- Budget approver: jikirchn​
- Property/Service Description: Support Engineer role to learn Azure and Azure features  
- Production application hosted: no


2. You will receive an email with the above subscription details
 

3. The Service and Finance Approvers will receive an email.



![AIS 1.jpg](/.attachments/AIS%201-f639abbb-a1a1-44ea-942e-562a6bb4761e.jpg)

 

4. You can click View your Request button to check the status of this application. Additionally, see the link to activate your Azure Account


![AIS 2.jpg](/.attachments/AIS%202-cdb2203d-801f-4605-990b-0d720ab6bb3a.jpg)


5. Once all approvals are in place you will receive a Congratulations Email. You are ready to create a subscription:



![AIS 3.jpg](/.attachments/AIS%203-0e032bf4-76f2-463a-acf2-27ca5bbef4ba.jpg)
6. Please click the button to create your New Subscription and follow the prompts
 

7. You will receive an email with your subscription ID and subscription Name: 

![AIS 4.jpg](/.attachments/AIS%204-14880fa4-60c2-4372-a336-2a25f33047ef.jpg)
8. You should now be able to Add resources within your portal  

# Internal Subscription Best Practices

Don't leave Cx reproductions running.
Don't leave VMs running over the weekend.
Don't leave HDI clusters running over the weekend.
Basically, don't leave anything running over the weekend unless strictly necessary.
Only permanently keep a few core resources you use regularly.
Pick a naming convention to use for all your resources for easy management.
Using different resource groups for different customer repros also makes for easy management.

# MCS Internal & Field Internal Trials Program (Azure Government) 
- updated 10/13/2020
- Azure Government Services (Fairfax)

 Request / Create a new a new one (per Sundar)
1.	Need to create a SD ticket to AAD
2.	Submit AIR Registration but require Cost Center

note, per Sateesh, we will access to gov subscription to repro some scenarios

email which initiated: 
From: Kyle Deeds <kydeeds@microsoft.com> 
Sent: Friday, October 9, 2020 9:31 PM
Subject: MCS Internal & Field Internal Trials Program | Subscription Access Being Removed

You were identified as an employee with access to an Azure Government subscription currently funded by the Azure Government engineering team through our internal trials program on mcsinternaltrials.onimicrosoft.com or fieldinternaltrials.onmicrosoft.com tenants. Funding was not approved to support these subscriptions in FY21 and we are working on deprovisioning any subscription still funded by the Azure Government engineering team. As part of this process, access to these subscriptions will be removed on October 21, 2020 unless they are moved to an alternate funding source.  We will continue supporting accounts on these tenants to provide employees access to Azure Government but will no longer be funding subscriptions.

Options to continue having access to an Azure Government subscription:
1.	If you would like to keep your existing Azure Government subscription, create an AIRS registration for your mcsinternaltrials or fieldinternaltrials account and submit a support ticket at http://aka.ms/azrinternalesc to transfer ownership of the subscription and ensure PC Code is updated to new funding source.
2.	If you don’t need to keep existing resources in your Azure Government subscription and just need access to a subscription, create an AIRS registration for your mcsinternaltrials or fieldinternaltrials account. Once the registration is in an “Approved” state you can provision a new subscription through the Azure Government portal
Both options require creation of an AIRS registration which can be done here . Account Type will be "USGov Internal Account" and Account Owner ID will be your mcsinternaltrials or fieldinternaltrials account. For cross charge information (PC Code, Finance Contact, Budget approver), please work through your business unit as these are not standard and vary by organization.

If you need to verify that a subscription is impacted by this change, check the Account Administrator of the subscription. If mcsinternaltrials.admin@mcsinternaltrials.omicrosoft.com , mcsinternaltrials.admin2@mcsinternaltrials.onmicrosoft.com , or fieldinternaltrials.admin@fieldinternaltrials.onmicrosoft.com is the Account Administrator then it’s being funded by the Azure Government Engineering team

