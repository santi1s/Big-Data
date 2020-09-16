
[[_TOC_]]

# Life Cycle of Communications
<center>

::: mermaid
graph TD
 A(FQR, First Quality Response)
 B(Email, based on customer preference.)
 C(Call, based on customer preference.)
 D(Follow Up Email <br> with Status and Next Steps)
 E(Follow up Every <br> 3 business days for <br> customer confirmation.)
 F(LQR, Last Quality Response)
 G(Follow up Every <br> 3 business days for <br> customer information, <br> or on date indicated <br> by customer.)
 H(Indicate when you will follow up <br> and follow up at that time.)
 I(Call Customer/Set Up Screen Share Meeting)
 J(Reach out to TAM if available. <br> If not, proceed to next step.)
 K(Unresponsive First Strike)
 L(Unresponsive Second Strike)
 M(Unresponsive Third Strike)

    A -->B
    A --> C
    C --> D
    B --> D
    E -->|Confirmation to Close Provided| F
    D -->|Pending Microsoft Research| H
    H --> D
    D -->|Pending Customer Information| G
    D -->|Upset Customer or <br> Too Many Emails Back and Forth| I
    I --> D
    D -->|Unresponsive Customer| J
    J -->|Response Recieved| D
    J -->|Unresponsive Customer| K
    K -->|Response Recieved| D
    K -->|Unresponsive Customer| L
    L -->|Response Recieved| D
    L -->|Unresponsive Customer| M
    M -->|Response Recieved| D
    M -->|Unresponsive Customer| F
    G -->|Unresponsive Customer| J
    D -->|Resolution Provided| E

    style A fill:#f9f,stroke:#f66,stroke-width:2px,color:#fff,stroke-dasharray: 5, 5
    style F fill:#f9f,stroke:#f66,stroke-width:2px,color:#fff,stroke-dasharray: 5, 5
:::

</center>

<center>

**Effective Communication Training - Rob Beene, Smit Shah - May 16 2019**
::: video
# Communications Training Videos
<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/4fba91e4-f162-49a8-907d-d058c1545ac1?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>
:::

<br>
<br>

**Case Communication Training - Whitney Henderson - July 20 2020**
:::video
<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/ff01a1ff-0400-a521-ee90-f1eacac98879?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>
:::

PPT Deck: [FQR-LQR-Comms- July202020.pptx](/.attachments/FQR-LQR-Comms-%20July202020-aff29e5c-802e-4bfc-b059-0abb3aef529f.pptx)

</center>

# Phone/Screen Share

## Gathering Customer Information
Customer security and protecting customer data is of utmost importance, so here are som very important guidelines.

1. **DO NOT record customer calls** using Teams, Log Me In, or any screen sharing service, and do not have your customer do this either. These services do not secure recorded data with the same level of security as our file storage does, and so is unsuitable to protect customer information.

2. **DO NOT take screenshots** during customer calls. Instead, ask your customer to take needed screenshots, and have your customer upload those screenshots to the case storage.
(If your customer uploads these screenshots to chat rather than to the case storage, ask them to upload to the case storage, but advise them that our case storage is more secure and not to include any PII information.)

3. **Avoid storing data that has PII** - PII stands for Personal Identifiable Information. This is any information that could connect your customer with their real identity -- Like a full name or phone number in a screenshot. (More details - [Procedure: Privacy: Handling Microsoft customer personal data](https://internal.support.services.microsoft.com/en-us/help/3064766) )

4. **If your customer provides any passwords** or any information that grants you access to their resoruces over email or chat ask them to change their passwords to protect their resource's security so this information cannot be used to access their environment.

## Answering Customer Calls
Sometimes your customers will reach out to you on the phone without a pre planned meeting.
Try and anticipate your customer and set up a call so you have time to plan a productive meeting.

However, if you answer a customer call, plan in advance how you are going to answer. Include your name, and that you are from Microsoft Support.

For Example:
> Hello, this is Jane Smith from Microsoft Support.

## Leaving a Voicemail

1. Don't leave any personal, critical, or environment information on a voicemail.
2. Instead, let the customer know:
a. Who you are, and that you are from Microsoft Support.
b. What case you are calling about (I tend to reference the technology rather than case number.)
c. What you are calling about in general. (Needed some further information, wanted to give an update or next steps.)
d. Mention that you will send an email with the next steps you wanted to cover in the voicemail.
e. Ask them to call you back or reply to your email.
f. Leave your phone number.
3. Send an email to your customer mentioning that you called and left a voice mail, then add the next steps or questions you wanted to cover on the call.

For example:

> Hello, this is Jane Smith from Microsoft Support. I was just reaching out to give you an update on your Data factory case. I was able to complete my review of your logs and wanted to speak with you about the results and next steps. I'll send all that information to you in an email, but if you would like to discuss it, please feel free to call me back! My number is in the signature of my email, but in case you don't receive the email, you can reach me here: 704-555-9988. That's 704-555-9988. Thank you! 

## Best Practices

1. **Smile on a Call** -- Even if your customer can't see you, they can hear you and just like you can hear when your customer is frustrated, they can hear when you're frustrated or disinterested. Smiling or acting like you would act if they were in person can help convey a more positive tone.

2. **Prepare for Calls/Meetings** -- When you have a customer meeting on the calendar, plan in advance what needs to be covered during that meeting. What information needs to be gathered? What information do you need to convey? What steps need to be taken? Once you have completed your to do list, unless something new has arisen during the call, move forward with closing out the call to respect your time and your customer's time.

3. **Stay Calm** -- It can be hard to stay calm while your customer is stressed, but they're already having a bad day (their environment isn't working!) Be that steady presence for your customer. 

4. **Be Courteous** -- Always be polite and professional with your customers, even (and maybe especially) when they are frustrated.

5. **Take Breaks When a Call Is Going Nowhere** -- If your call has stalled and you're not sure what to do next, come up with actionable next steps for you and your customer to move the case forward and attempt to end the call. Even if they want you to remain on the call, take a moment to step back and work on those next steps, letting your customer know what you are doing and that you will be there if they  need assistance.

## How to Rescue a 'Bad' Call
1. Stay Calm.
2. Return to your planned to-do list.
3. Ask your customer for their current priorities.
4. Create action plan/next steps with customer.
5. Take time to research.


# Email


## Attach Outlook Email to Service Desk Case
1. Add the case number to the email subject.
![image.png](/.attachments/image-59e856f4-6b21-43e3-b8e3-c1a870375860.png)

2. Add support@mail.support.microsoft.com in the CC line
![image.png](/.attachments/image-f6584e02-6466-4281-8f07-a0402cb06abf.png)

Now when you send your email it will get attached to your service desk case.

Template:
![image.png](/.attachments/image-6fde8463-2b9f-4054-9778-ba0b4cddb38c.png)

Example:

![image.png](/.attachments/image-692b1fb3-0feb-45ec-ba86-b5ba23338be0.png)


## Email Signature

### Template
Your signature should always contain: Your email address, your title, your hours, your managers email address, your phone number, and the microsoft logo. You can use the below signature as a template.

>Whitney Henderson
>whhender@microsoft.com
                   
>Support Engineer       Work Hours: M-F 8am-5pm EST
>Data Movement         Office: +1 (980) 7767642 X67642
> Manager: Lee Pauling - lepaulin@microsoft.com
> ![image.png](/.attachments/image-1235bd30-b3be-4f75-bb2a-c7f96ce2998d.png)

### Adding a Signature in Outlook

1. In Outlook search "Signature", then select "Signature" and "Signatures"
![image.png](/.attachments/image-5d383eda-b3c5-496f-a5b1-f792cdbbfa31.png)
2. Click "New"
![image.png](/.attachments/image-77de3af4-812e-436d-93f9-a0208e351daa.png)
3. Name your Signature and click "Okay"
![image.png](/.attachments/image-9867536c-1d3a-4df2-8a66-63741377a396.png)
4. Add your signature to the Editor at the bottom
![image.png](/.attachments/image-74523b6b-8039-4675-bbd6-0568213d340f.png)
5. Choose what email account you want to use, and what kinds of emails you want it for.
![image.png](/.attachments/image-0d844667-54ea-4aa8-97aa-de141561b0a8.png)
6. Click Okay
![image.png](/.attachments/image-381ef547-93a4-4c7a-b82a-16a131775e1b.png)

## First Quality Response (FQR)

**First Quality Response (FQR) is a new behavior for delivering initial response to the customer for CSS.** The focus is to ensure the first engagement with the customer is done by an Engineer that is prepared, personalizes a response, and intends to make progress towards resolving the customer’s issue. (We call this the **3 P's: Prepared, Personalized, Progress**).

Time to initial contact may be slightly longer, but customer satisfaction is higher because the issue gets resolved or progress toward resolution is made in the first contact. 

We want the customer to come away from their initial interaction feeling they are working with someone who is going to quickly resolve their situation. First impressions count. We want to eliminate non-value-added activities. 

A First Quality Response is more than a “handshake”, a repetition of the customer’s problem description, or a list of things we won’t do. The more progress that is made towards resolution, the higher the ‘Quality’ of the customer interaction. 

Find the [FQR Template](https://internal.support.services.microsoft.com/en-us/help/4464166#Templates).

### Supporting material

- [CXD FQR Unlearn, Learn, Grow for Engineers](https://microsofteur.sharepoint.com/:p:/t/CXD/EbJg-OKYuMJOhn9NchqyMccBPeH8DDQTU44HrmjjXt2hwQ?e=oZZdfH) and [For Managers](https://microsofteur.sharepoint.com/:p:/t/CXD/ESFy92BYOQ1Eg0juRu_2G8MB1Ir0EJp7DMN1aFq2HJSqAg?e=ulBfMy) what's needed to deploy FQR successfully.
- [CXD FQR and Swarming Process Documentation V2](https://microsofteur.sharepoint.com/:w:/t/CXD/EbHGzv6THDRHsWXbr7-zwSoBgNN2bOfBSdomtvoWPnM7Wg?e=e5mPd9) -  list of 12 processes and procedures updated on OneStop and KB.
- [FQR Process](https://internal.support.services.microsoft.com/en-us/help/4464166) - Documentation supporting engineer to initiate FQR
- [FQR 3Ps](https://microsofteur.sharepoint.com/:p:/t/CXD/ETwZBGO6RR1Foh5scCLptvMBpIOFlzQoH_bm4aRd8T--vQ?e=6W2Y3U) - go deeper on the 3Ps "prepared, personalised and progress"
- CXD Manager Playbook V2 - Guide to help managers land capabilities with their teams and includes a section on "FQR".

## Last Quality Response

Last Quality Response (LQR) gives you an opportunity to leave the customer with a good last impression. Set the expectation that a closing email will be sent that captures the issue and resolution. This is something customer can always use if the issue happens again.

### Outline for email

The following outline comprises the major components of a standard LQR email. You should strive to apply it _in full_ with every LQR email you write. However, you should also use your best judgement and adapt this outline on a case-by-case basis. Don't blindly follow templates--_personalize your emails!_

1. Address the customer by their personal name.
1. Greet the customer cordially.
1. State the purpose of the email.
1. Paraphrase what the customer requested of us (Microsoft).
   * Note salient symptoms of the problem, if applicable.
   * Note extraordinary business need, if applicable.
1. Describe what we did to fulfill the customer's request(s).
   * Show the business value that we (Microsoft Support) provided.
   * Describe our solution/answer in "just enough" detail as to be useful for posterity.
   * Recap our root cause analysis (RCA) _only if requested_.
1. Welcome the customer to reopen the cause through the Azure Portal if the issue returns, _only if necessary to assuage the customer's hesitancy to close the case._
1. Advise the customer for the future.
   * Share salient best practices / "expert" tips.
   * Refer the customer to relevant resources they may not know about: specific [architecture guides](https://docs.microsoft.com/azure/architecture/), useful [quickstart templates](https://azure.microsoft.com/resources/templates/), new [feature releases](https://azure.microsoft.com/blog/), etc.
1. Inform the customer of the post-case survey.
   * (It is a brief survey about the quality of support we provided on the case.)
   * Graciously ask the customer to complete the survey and/or express your sincere interest in their feedback.
1. Thank the customer for using Microsoft products.
1. Insert your full Microsoft email signature.
   * Include contact information for you and your manager.

### Good practices

You SHOULD do all of the following:

* Always personalize emails.
* Adapt messaging templates to the specific context.
* Include your manager's contact information in your email signature.

### Bad practices

You SHOULD NOT do any of the following:

* Contact the customer and/or close their case on holidays, weekends, after working hours, etc.
* Close a case without receiving explicit customer approval to do so. _(except in the case of chronically unresponsive customers; see below)_
* Close a case on an unresponsive customer without waiting at least two (2) weeks since the successful contact with the customer.


# Unresponsive Customers

## Right After a Solution Has Been Delivered

If you have delivered a solution to your customer, and have not heard from them:

1. If the customer has specified communication preferences (ex: "Let me test this and follow up tomorrow.") follow your customer's lead. 
2. If you have not heard from them in 24 hours, **call.**
3. If you cannot reach them on the call, **email them.**
4. Follow up **daily** for **three business days.**
5. If after that you have not heard from your customer, or they have not specified other communications preferences (ex: An out of office message.), **follow the three-strike process below.**

![image.png](/.attachments/image-c28ec71b-4954-41a4-885e-e077b27bb101.png)

This immediate follow up after a solution is delivered is to help make sure our customers can quickly get the full solution they need. Three-Strike is for closing out a stalled case.
## Three-Strike Process

The below workflow gives a general idea about the process for CSS to follow when working with an un-responsive customer. **_CSS should always consider the case context and customer sentiment_**.

![LQR Flow_Un-Responsive Customers.jpg](/.attachments/LQR%20Flow_Un-Responsive%20Customers-9387c391-dfdb-425a-b191-bb60dc17e83d.jpg)


# Dissatisfied customers

If you think that customer can be dissatisfied for any reason, then:

1. Discuss as soon as possible this case with a Senior Engineer or Technical Advisor, they may suggest looping in the PG as well. **_Do not delay asking for help if the customer is dissatisfied_**
2. Contact the TAM (_**for Premier cases**_)
3. Follow the process for CSAT Impacting IcMs (for participating product groups) and consider making a recovery call.

# Best Practices

## Dos

1. If you are working with the product team, and they have provided some technical information that you don't understand/aren't sure you can communicate to the customer, ask questions until you understand what they're asking!
2. Rephrase product group communications to be customer facing. Provide steps where possible.
3. Confirm with the product team if specific technical information/product limitations can be communicated with the customer. Especially for bigger customers, sometimes a project manager should be involved to make sure we're communicating limitations correctly.
4. If you're going to have a phone call or a screen sharing session, write down the points you intend to cover during the call.

## Don'ts

1. Don't just copy and paste what the product team tells you for a customer. Rephrase it to make it more personal/useful to the customer.
2. Don't ask the product team to give you a verbatim for your customer. The product team can provide technical information, but it is up to CSS to make that technical information relevant to the customer.
# Templates
**NOTE**
**These Templates are intended to be starting places. Please do personalize/update them to suit your customers and your cases.**
**You may emulate the following examples of emails, but you should not copy them directly. _Always personalize every email to any customer._ Customer communication should not only be unmistakably cordial, but also impart a sense of individualized consideration. Be personable!**

##Initial Email 

```

Hello <Customer>,
 
Thank you for contacting Microsoft Support. My name is <Name> and I am the Support Professional who will be working with you regarding this service request <Case Number>.You can reach me using the contact information in my signature.

Thank you for providing your initial information, as I understand you are seeing <Brief description of the issue or error as you understand it, including a specific error message>

Please let me know if there is anything I have missed, if the information is inaccurate, or if you have any questions or clarifications.

<Here, add initial questions or initial information to get the case moving if you have it! Otherwise, tell them that you are looking into the issue and will reach out shortly with next steps.>

Best Regards,

<Signature>

```

## Status: "Resolved"

> Hello [Customer Name],
>
> Thank you again for using Microsoft Products and for reaching out to Microsoft Support regarding _[Recap of the issue reported]_
>
> Cause _[if applicable]_: _[summary of root cause]_.
> **Resolution: _[Summary of the resolution]_.**
>
> We are so glad we were able to assist you in resolving your issue and we will continue forward with closing this case.
>
> Should you have any further questions you may reach me using the information in my signature. Additionally, should the issue reoccur, please feel free to reopen the associated incident.
>
> You may receive an invitation from Microsoft to complete a brief web survey about your support experience. We would appreciate it if you can take a few minutes to complete the survey. Any feedback you can provide will be greatly appreciated. We use your response to continually improve our service.
>
> Sincerely,
>
> _**[Support Engineer Name]**_
> Title | Team
> Phone: xxx-xxx-xxxx
> Email: xxxxx@microsoft.com
> Working Hours: 9-6pm CDT (14:00-23:00 UTC) Mon-Fri

## Status: "Resolved by Customer"

> Hello [Customer Name],
>
> This is fantastic news and thank you for updating me. For my own understanding, can you please share any changes or steps that were taken to resolve your issue?
>
> **Thank you for providing details and staying in communication. I will proceed with closing the support request at this time.**
>
> Should you find yourself having any additional issues relating to this service request, please feel free to reopen the associated incident and we will continue our research efforts. You can reach me via my contact details below.
>
> You may receive an invitation from Microsoft to complete a brief web survey about your support experience. We would appreciate it if you can take a few minutes to complete the survey. Any feedback you can provide will be greatly appreciated. We use your response to continually improve our service.
>
> Sincerely,
>
> _**[Support Engineer Name]**_
> Title | Team
> Phone: xxx-xxx-xxxx
> Email: xxxxx@microsoft.com
> Working Hours: 9-6pm CDT (14:00-23:00 UTC) Mon-Fri

## Status: "Unresolved"

The customer has stopped responding to calls or emails, please make sure to **_CC the TAM and Manager on LQR emails_**. If customer is **_Premier, work with the TAM_** to help contact the customer to verify the case is ready to close.

1. Follow-up
2. 2nd Attempt (Unresponsive customer)
3. Final attempt (Unresponsive customer)
4. Closure Email

## Unresponsive customer: 1st follow-up

> Hello [Customer Name]
>
> This is a follow-up to the email sent on _[MM/DD]._ We have not received any communication from you and want to confirm whether the information provided was helpful, or if you have any further questions or concerns.
>
> **Kindly reply on whether the steps shared have assisted you in finding the support and/or resolution information you are seeking.**
> Should you have any further questions regarding this inquiry, you can reach me using the contact information in my signature.
>
> Sincerely,
>
> _**[Support Engineer Name]**_
> Title | Team
> Phone: xxx-xxx-xxxx
> Email: xxxxx@microsoft.com
> Working Hours: 9-6pm CDT (14:00-23:00 UTC) Mon-Fri

## Unresponsive customer: 2nd follow-up

> Hello [Customer Name],
>
> Sorry I haven't been able to reach you in my last couple of attempts. Please share your availability and we can continue working at a convenient time for you.
>
> **Can I help you with anything further or would you prefer to close this support incident?**
>
> We care for your support and it is important to get your consent to close this case before I take that action.
>
> If your issue has been resolved, we always appreciate anything you can share as to the resolution; so we can update our records and documentation to help us in future cases.
>
> Sincerely,
>
> _**[Support Engineer Name]**_
> Title | Team
> Phone: xxx-xxx-xxxx
> Email: xxxxx@microsoft.com
> Working Hours: 9-6pm CDT (14:00-23:00 UTC) Mon-Fri

## Unresponsive customer: 3rd follow-up

> Hello [Customer Name],
>
> Thank you for contacting Microsoft Azure Support. Unfortunately, we haven't been able to reach you and will be closing this ticket on **[Month, DD]** as a result.
>
> If you still have questions or need assistance before that time, please reach out to me directly.
>
> I apologize if this causes any inconveniences, and if after that date you still need assistance, please do not hesitate to reach out to me directly, or to open a new case an add this case number **[case number]** in the description so we may pick up from we left off.
>
> If your issue has been resolved, we always appreciate anything you can share as to the resolution; so we can update our records and documentation to help us in future cases. If you have immediate feedback about me, please feel free to reach out to my manager First Name, Last Name xxxx@microsoft.com.
>
> Thank you for your time, and thank you for choosing Microsoft products.
>
> Sincerely,
>
> _**[Support Engineer Name]**_
> Title | Team
> Phone: xxx-xxx-xxxx
> Email: xxxxx@microsoft.com
> Working Hours: 9-6pm CDT (14:00-23:00 UTC) Mon-Fri

## Unresponsive customer: Closure

> Hello [Customer Name],
>
> Thank you for contacting Microsoft Azure Support. Your case: [Case Number] has now been closed.
>
> If you need to continue working on this case, please do not hesitate to reach out to me directly or reopen this service request in your support history and submit a re-open ticket request.
>
> If your issue has been resolved, we always appreciate anything you can share as to the resolution; so we can update our records and documentation to help us in future cases.
>
> If you have immediate feedback about me, please feel free to reach out to my manager First Name, Last Name xxxx@microsoft.com.
>
> Thank you for choosing Microsoft products.
>
> Sincerely,
>
> _**[Support Engineer Name]**_
> Title | Team
> Phone: xxx-xxx-xxxx
> Email: xxxxx@microsoft.com
> Working Hours: 9-6pm CDT (14:00-23:00 UTC) Mon-Fri