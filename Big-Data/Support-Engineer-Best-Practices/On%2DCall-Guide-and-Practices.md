[[_TOC_]]


# What to do when your on-call for a week.   
For **Regular** on call: Typically will only be CritSits/Sev A, or escalations which a on-call manager has approved, The Duty Manager will call you. 
For **FYEY/USNAT** on call:  For any case which falls in the FYEY queue, the special duty manager will call you directly.  
For **Data Movement**, the FYEY/USNAT on-call rotation is also considered the backup on-call, since most of the engineers aren't skilled on all 10 products. 

# Who Depth Queue and ARR*
Typically after an SE has handled at least one CritSit and has comfortably with all the services within the POD (Data Movement has the most services)  . For FVEY, those who can take Restricted cases like USNAT, Azure Gov in the United States and UK. 
*as of Nov 2020, ARR has begun staffing over the weekends for most products, so they are slowly phasing out of on call rotations. 

# How ([aka.ms/bigdataoncall](aka.ms/bigdataoncall)) 
Each region has a spreadsheet (rotation) which is pulled every 3 hours that generates the on-call for all Data and AI teams intothis  BI web portal.  
Monday morning the Duty Manager on-call team will start sending reminder emails based off the BI web portal.  If you're on the list you'll get the email. 


# Why CSS Big Data / CSS Data Movement needs to have an on call per POD for times during our NA (North American) region's timeslot if we don't have a a have scheduled engineer(s) or Mindtree to handle the case volume.   This is also our "backup" in the event we need SE's to stay late or come in early, additional volume spikes.  

# When For both on-call rotations starts every **Friday** and runs to **Thursday** the following week.  
For **Regular** on-call its for Americas timeblock, M-F.   
For **FVEY** its 24/7.   
However, since the majority of our staff is scheduled Monday though Friday as well as all the other regions, your really just on call for Sat and Sun,  (updated 5/12/2020 - typo)

# America's Region (NA / ATZ / AMER) Time block relative to On-Call is: 9:00 AM PST to 4:59 PM PST

Note, Azure North America support hours are 6AM to 6 PM PDT/PST, M-F. 


# On call schedule:
 [http://aka.ms/bigdataoncall](aka.ms/bigdataoncall)  NA (orange) blocks is us. 
- **Big Data (HDI/DB/Databricks)** :  https://msit.powerbi.com/groups/me/reports/f1b399b5-7442-42d8-9c28-e25eec66ca1c/ReportSectionf3d413d302a9b5717a58
- **Data Movement** : https://msit.powerbi.com/groups/me/reports/f1b399b5-7442-42d8-9c28-e25eec66ca1c/ReportSection1a0f70142a39fa9f7f8b
- **FYEY/USWIN** : https://msit.powerbi.com/groups/me/reports/f1b399b5-7442-42d8-9c28-e25eec66ca1c/ReportSection06305dbf4819cb6012c7

FYI here's how it rolls up for all Data and AI: https://msit.powerbi.com/groups/me/reports/f1b399b5-7442-42d8-9c28-e25eec66ca1c/ReportSection5cbf5b59d218d279ceee






# Guidelines / FAQ's
## What's actions do I need to take before and during I'm on call?
- ***Important*** Emails from various Duty Manager teams validating whos on call starting on Monday will be sent out, if there's an error quickly let your manager know via email AND Chat in Teams. 
- review the On-call heads up emails 2 weeks before and a week before
- In the morning login and check the Case Assignment Chat in Teams
- After the notification that your officially on call Friday morning/afternoon, test that  you receive your own call by calling 1-800-242-7001 and your teams mailbox (list below in high level process section) 
- Before Monday (after the weekend on-call)  following your on-call weekend please populate our new on-call log form for each call you have to take action with case, date, time, customer name, severity : [http://aka.ms/oncalllog](aka.ms/oncalllog) 
## What's expected when your on call?
- Calls from Duty Managers, or On Call Manager, On-call Peer, to support customers and peers in both an on-call and backup capacity.
- Typically you will only receive calls Saturday and Sunday for our timeblock- when the scheduled staff working can't work the cases because of volume, skill or restricted access; 
- Answer your phone from the Duty Manager when they call and work that case. 
- a couple times throughout the day if you don't get any calls checkin to Teams Case Assignment Chat and see if there's any issues for CritSits 
- Be available and able to work case within 15-20 min.  (you shouldn't plan on going out to the movies that weekend) 
- have your mobile on and laptop up and running 
- have vpn 2 factor , WFH (Work From Home) tested and working 
- Are you new or 1st time being on call? a WEEK prior reach out to our SEE, PTA, and TA to assess your readiness and a secondary back up / phone a friend to assist beyond the hive. 
- Duty Managers numbers will be different and could be flagged as Potential Spam by your mobile OS or your mobile carrier.  However that typically is the same number that will call you. (example 1-314-888-2523  from Ladue, MO is a number that came up when Lee was on call over the weekend in April 2020) 
# High Level Process
. For FYEY- review specific Teams and Quques , guidelines for after hours support (link here) 
. Review the http://aka.ms/bigdataoncall  periodically to see when your on the rotation (this will change )
. 2 weeks prior engineers who are 2 weeks out are CCed on on-call email
. week of - Mon-Tues, FROM DUTY MANAGER TEAM, well send out a separate email to everyone whos on call for the following week. email subject "Data and AI After Hours Support Schedules for DATE"
. week of - Weds, of week of a heads up email to on call "hive" notification of on call and basic info 
. On call start - Fri morning, Manager updates the on call names and numbers a in freedomvoice for Americas, and updates hive via email this is complete. You can test this by calling 888-242-7001, then 881-4 for your POD your on call to verify it works.
. HOPEFULLY - DM reviews WFM and RAT to see if Americas has an engineer working that shift before engaging the on-call.  If your POD is on VDM, you've most likely have an engineer working America's Time of day. 
1. Case requires call out anytime Friday we don't have an engineer to support a case, which is typically Saturday/Sunday, between 9AM and 6PM PST, 
2. Duty Manager calls out On-call Manager (1 of 18 Managers from Data and AI), 1-800-242-7001, option 86 and approves call out to which team. 
3. Duty Manager looks at http://aka.ms/bigdataoncall (well email generated off it a few days before Friday) and calls 1-800-242-7001, and based on which POD / Service puts in either 881, 882, 883, or 884. which call forwards to the mobile number based on Friday date and POD, and which engineer is listed. 
FYI - Fridays your number is put into one of the following FreedomVoice mailboxs (call forward)
881       HDInsight
882       Data Movement
883       Database
884       Databricks
888       FVEY / USNAT Big Data-Database POD
879       FVEY / USNAT Data Movement POD
864       FVEY / USNAT Big Data-HDInsight POD
858       FVEY / USNAT Big Data-Spark POD, Databricks

4.  SE answers call and works case to delight our customer.  If case needs to be handed off to APAC, ping DM a few minutes before the end of the Americas time block so they initiate a call out (1st to APAC on-call manager, who oks call out to on-call engineer, etc) then work with DM/APAC engineer to hand off case. 
5. populate the on-call form http://aka.ms/oncalllog 


#  Swap on-call 
Want a different on-call week or need to change it? 
1. ping your peers and see who will swap with you.
2. email your manager (cc swapper) 
3. manager updates spreadsheet (takes 3 hours before its on the BI portal) 


# Submit Expense report for Cell usage (FTE only in United States)
Each month submit an expense report
1. use aka.ms/MSexpense
2. use Expense purpose like : mobile phone services while on call 
3. use Cell Phone category like: ![image.png](/.attachments/image-07e5a176-2b78-48ff-bd99-d4484bca69cc.png)
4. your cost center should be pre-populated
 (GL code for Cell Phone should be 742001)
 (default will be like 10175153 if your data movement. 10175331, 10175360. 10213160. 10177173. ARRs 10194032
4. Amount $75


    


# More info / FAQ
[![image.png](/.attachments/image-e15c3c72-1f44-49cd-9298-f9e93c4809c4.png)](https://msit.powerbi.com/groups/me/reports/f1b399b5-7442-42d8-9c28-e25eec66ca1c/ReportSectionb94977034c860e25461e) 



