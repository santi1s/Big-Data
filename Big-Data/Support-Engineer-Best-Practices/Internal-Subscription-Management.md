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



![image.png](/.attachments/image-f8b192b0-1a1c-4799-8bfe-dc6270fac713.png)
 

4. You can click View your Request button to check the status of this application. Additionally, see the link to activate your Azure Account


![AIS 2.jpg](/.attachments/AIS%202-cdb2203d-801f-4605-990b-0d720ab6bb3a.jpg)


5. Once all approvals are in place you will receive a Congratulations Email. You are ready to create a subscription:



![image.png](/.attachments/image-00b17e7a-b934-4ef9-b13d-d51be1dbcf8c.png)

6. Please click the button to create your New Subscription and follow the prompts
 

7. You will receive an email with your subscription ID and subscription Name: 

![image.png](/.attachments/image-37327d1a-ea50-4e7d-9d1c-9414425e68fd.png)

8. You should now be able to Add resources within your portal  

# Internal Subscription Best Practices

Don't leave Cx reproductions running.
Don't leave VMs running over the weekend.
Don't leave HDI clusters running over the weekend.
Basically, don't leave anything running over the weekend unless strictly necessary because resources cost money and can be expensive!


Only permanently keep a few core resources you use regularly.
Pick a naming convention to use for all your resources for easy management.
Using different resource groups for different customer repros also makes for easy management.

# MCS Internal & Field Internal Trials Program (Azure Government) 
- updated 10/13/2020
- Azure Government Services (Fairfax)

Request / Create a new a new one (per Sundar)
1.	Need to create a SD ticket to AAD
2.	Submit AIR Registration but require Cost Center

[aka.ms/servicetree](http://aka.ms/servicetree): Use Service Tree to model organizations, services and offerings as a single source of truth with associated metadata and dependencies
[aka.ms/airs](http://aka.ms/airs):  Azure Internal Registration System
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

# Registering for an AIRS Gov subscription:
1. Go to https://aka.ms/airs and then click New Registration.
2. In Account type, select USGov Internal Account
3. In Account Owner ID, enter your mcsinternaltrials or fieldinternaltrials account
4. For Property/service name enter "Microsoft Azure Internal Consumption"
5. In Cross Charge Information, use PC Code P10175065 in both fields requesting it
6. Leave PFAM as 000
7. Under Program Name, choose CSS Azure for both fields
8. For Paid Support, choose standard
9. Finance contact alias: Charusa Budget approver alias: jikirchn
10. Describe how you'll be using this in Property/service description (to support azure gov customers), and select No, a production application will not be hosted under this account
11. Business Group is Microsoft Azure team
12. In Business Justification, clarify again this will be used to support customers.