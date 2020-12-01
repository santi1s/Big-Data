[[_TOC_]]

# Case Assignment Leads

## Data Movement Leads

_If this is incorrect or your region isn't present, please do edit the page and correct/add information._

||EMEA|AMER|APAC|INDIA|Mindtree - Redmond|Mindtree - India| 
|------------------|------------------|----------|--------------------|---------------------|------------------|------------------|
||Pedro Martins (pemar)|Whitney Henderson (whhender)| Jing Pu (jinpu)|Shyam Simha (shyamsim)|Supreeth Vasudevamurthy (v-suvas)|Chanakya Jalda|
||Yassine Mzoughi (mzyassin)|Sundar Easwaran (seaswara)|Yvonne Zhang (yuzhang4)| Vinod Kakarparhi (vikakarp)||ALEKYA PONUKUMATI (v-alponu)|
|||Alex Blaine (alexbla)|Krishnakumar RUKMANGATHAN (KRIRUKM )||||
|||Harpreet Singh (harpsi)|||||
|Managers:|Telmo Batista (tebatist)|Lee Pauling (lepaulin)|Sonic Tang (haitang)|Thirumal Maram (thmaram)|Chaithanya Reddy Sarabuddi (v-chaisc)|Vinod Kumar ( v-vinoku )|
||||||Nisar Ansari(v-niansa)||


# How to Manually Find a Resource

If you have an engineer that is unable to complete automatic assignment of a critical case, you may need to manually find a resource to take the case. Here are the processes we use, by region, to achieve this.

## AMER Process

If the engineer still has some time left before their end of shift, wait 15-30 minutes and try assignment again; a resource may come available! If you do not have that time to wait, use the process below.

1. **THIS STEP HAS NOT BEEN WORKING AS OF 11/16. Skip to Step 2.** Check this [VDM Resource Tool](https://crmglobal.corp.microsoft.com/GLBCRMSUP/WebResources/crmee_/Pages/CrmGlobal.ResourceSelection.html) to see who is available based on VDM's criteria.
2. On the [CRM Global site](https://crmglobal.corp.microsoft.com/GLBCRMSUP/main.aspx#746218167) navigate to Collaboration, then 'Resource'. 
![image.png](/.attachments/image-6fb57c99-6ac4-4ddf-9458-c3e457e1ca63.png)
Then at the top of the page click the filter button. 

Then select 'Saved Views' and use the select the AMER view for the correct technology for the case's support area path. 

![image.png](/.attachments/image-d7b60fc4-ac46-46ba-a08c-449de2a8fd11.png)
Select 'Results' to see the full list. **This view only shows what resources take that kind of case and not who is available.**
![image.png](/.attachments/image-d1a97275-496e-4759-b8c4-27669977d2e5.png)
3. Compare your list from step 2 with [WFM to see who is currently online for your pod.](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/326172/View-WFM-Schedule-Per-POD)
4. For a user who is aligned with the correct technology and currently available in WFM check their capacity to see how many cases they have already been assigned by: On the [CRM Global site](https://crmglobal.corp.microsoft.com/GLBCRMSUP/main.aspx#746218167) in the top, black bar select the magnifying glass and search the name or alias of the user you would like to check.
![image.png](/.attachments/image-9fcf999c-3433-4847-af72-e2df87a5a27c.png)
Select the user under "Bookable Resources"
![image.png](/.attachments/image-f6663f45-839f-4af2-b640-ec88139ab148.png)
Scroll down to the 'Categories' section where you will be able to see the resource's current capacities for the day. Under the 'Available Capacity' column you will see how much capacity the resource has available that day.
![image.png](/.attachments/image-ffebedc8-3551-4e72-9646-9625b3f7ee03.png)
**If there is 0 capacity under 'A'** then the user has already had a sev A case for the day, and if you are trying to assign a Sev A, that user should not be manually assigned to without asking them specifically.
**If there is 0 capacity under 'Azure: Engineer (x/day)** then the user has already been assigned all their cases for that day and should not be manually assigned to without asking them specifically.
**If there is available capacity under 'Azure: Engineer (x/day) and the correct Severity** then you can [use FTS to manually assign the case to that engineer.](https://dev.azure.com/Supportability/Big%20Data/_wiki/wikis/Big-Data.wiki/393781/FTS-(Follow-the-Sun)-User-Guides?anchor=select-resource)

**If no engineers who are available in WFM have the correct capacity needed, the case may need to wait to be assigned until other engineers become available. Our Mindtree team comes online at 12pm EST and can generally absorb overflow.** 



# How Long Will Leads Need to Review and Process Transfers?
Currently we have requested that our support engineers complete their FTS requests up to the “Ensure Summary” stage, and then leave it to the Leads to confirm and complete the transfer at the time of the handover call.

This is to ensure that our engineers correctly complete the transfer process and that they are moving valid transfers.

**However, there is no mechanical reason that leads need to do this.** Engineers can complete the FTS process themselves, and we would like to empower them to do so! This will reduce the workload on both engineers and leads and make the handover process much smoother.

**So, when can we transition to the self-serve model for our engineers?**

We leave this to the judgment of the leads who manage each handover call.

Whenever you are comfortable with the quality of handovers at your handover call, please empower your engineers to complete the FTS transfer process themselves.

It is suggested to do daily reviews for at least two weeks before phasing out lead reviews. However, use discretion for your own regions and handover calls.

# Leads Teams Channels

[WW Data Movement Leads Channel](https://teams.microsoft.com/l/channel/19%3a97376d30de2b400ca19641af9615b796%40thread.tacv2/FTS%2520Leads%2520Chat?groupId=850828d8-228e-40ed-ab61-e73dd90037e2&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47)

# How Does FTS Assign Cases?
FTS uses VDM, but has its own rules atop VDMs normal assignment rules. So, FTS:
- **Does NOT** do prebooking - FTS only looks for currently available engineers.
- **DOES** respect WFM schedules- For Severity A cases, FTS Will not assign a case if an engineer if the engineer has fewer than 2 hrs available on their schedule.
For example - if your engineer has lunch less than 2 hrs after the handover call time, they will not show as available to take a case.
- **DOES** respect capacity - if your engineer has already received a case, FTS will respect the timing limitations based on the severity of a case and will not assign a case within those thresholds.
- **DOES** use VDM to assign the case so engineers who have a case assigned to them from FTS will receive an email and capacity "credit" as expected.
