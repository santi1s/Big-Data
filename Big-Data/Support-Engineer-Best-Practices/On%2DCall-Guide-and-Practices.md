**What:**  What to do when your on-call for a week.   
Typically will only be CritSits, or escalations which a on-call manager has approved. 

**Who:**   Depth Queue and ARR,  typically after an SE has handled at least one CritSit and has comfortably with all the services within the POD (Data Movement has the most services) 

**How:**   Via a spreadsheet which has the rotation per POD. 
Each region has a spreadsheet (rotation) which is pulled every 3 hours that generates  the on-call for all Data and AI teams into a BI web portal. 

**Why:**  CSS Big Data needs to have an on call per POD for times during our NA (North American) region's timeslot and we don't have scheduled engineers.   This is also our "backup" in the event we need SE's to stay late or come in early. 

**When:**   On call rotation starts every Friday and runs to Thursday.   However since the majority of our staff is scheduled Monday though Friday as well as all the other regions, your really just on call for Sat and Sun, **9:00 AM PST to 4:59 PM PST**.  (updated 5/12/2020 - typo)

America's Region (NA / ATZ / AMER) Time block is:
**9:00 AM PST to 4:59 PM PST**

**On call schedule here:**  http://aka.ms/bigdataoncall 
 NA (orange) blocks is us. 


FYI here's how it rolls up for all Data and AI: https://msit.powerbi.com/groups/me/reports/f1b399b5-7442-42d8-9c28-e25eec66ca1c/ReportSection5cbf5b59d218d279ceee



**What's expected when your on call?**
- your 1 of 4 SE's who are the on-call "Hive".  to support customers and peers in both an on-call and backup capacity.; 
- Answer your phone from the Duty Manager when they call and work that case. 
- before Monday please populate our new on-call log form for each call you have to take action with case, date, time, customer name, severity : http://aka.ms/oncalllog 
- emails from various duty manager teams validating whos on call.   
- be available and able to work case within 15-20 min.  (you shouldn't plan on going out to the movies that weekend) 
- have your mobile on and laptop up and running 
- have vpn 2 factor , WFH (Work From Home) tested and working 
- are you new or 1st time being on call? a WEEK prior reach out to our SME and TA to assess your readiness and a secondary back up / phone a friend to assist beyond the hive. 
- Duty Managers numbers will be different and could be flagged as Potential Spam by your mobile OS or your mobile carrier.  However that typically is the same number that will call you. (example 1-314-888-2523  from Ladue, MO is a number that came up when Lee was on call over the weekend in April 2020) 


**Want a different on-call week or need to change it?** 
1. ping your peers and see who will swap with you.
2. email your manager (cc swapper) 
3. manager updates spreadsheet (takes 3 hours before its on the BI portal) 



**Submit expense report for Cell usage (for the month, FTE only):**
1. use aka.ms/MSexpense
2. use Expense purpose like : mobile phone services while on call 
3. use Cell Phone category , and your cost center 
 (GL code for Cell Phone should be 742001)
 (default will be like 10175153. 10175331, 10175360. 10213160. 10177173. ARRs 10194032
4. amount $75
. Only for the month your on call- if your on call 3 times in a year in different months, we would expect 3 expense reports. 

    


**More info / FAQ:** 
https://msit.powerbi.com/groups/me/reports/f1b399b5-7442-42d8-9c28-e25eec66ca1c/ReportSectionb94977034c860e25461e



**High Level Process:**
. Review the http://aka.ms/bigdataoncall  periodically to see when your on the rotation (this will change )
. 2 weeks prior engineers who are 2 weeks out are CCed on on-call email
. week of - Mon-Tues, FROM DUTY MANAGER TEAM, well send out a separate email to everyone whos on call for the following week. email subject "Data and AI After Hours Support Schedules for DATE"
. week of - Weds, of week of a heads up email to on call "hive" notification of on call and basic info 
. on call start - Fri morning, Manager updates the on call names and numbers a in freedomvoice for Americas, and updates hive via email this is complete. You can test this by calling 888-242-7001, then 881-4 for your POD your on call to verify it works.
. HOPEFULLY - DM reviews WFM and RAT to see if Americas has an engineer working that shift before engaging the on-call. 
1. case requires call out anytime Friday we don't have an engineer to support a case, which is typically Saturday/Sunday, between 9AM and 6PM PST
2. Duty Manager calls out On-call Manager (1 of 18 Managers from Data and AI), 1-800-242-7001, option 86 and approves call out to which team. 
3. Duty Manager looks at http://aka.ms/bigdataoncall (well email generated off it a few days before Friday) and calls 1-800-242-7001, and based on which POD / Service puts in either 881, 882, 883, or 884. which call forwards to the mobile number based on Friday date and POD, and which engineer is listed. 
FYI - Fridays your number is put into one of the following Freedom Voice mailmox (call forward)
881       HDInsight
882       Data Movement
883       Database
884       Databricks

4.  SE answers call and works case to delight our customer.  If case needs to be handed off to APAC, ping DM a few minutes before the end of the Americas time block so they initiate a call out (1st to APAC on-call manager, who oks call out to on-call engineer, etc) then work with DM/APAC engineer to hand off case. 
5. populate the on-call form http://aka.ms/oncalllog 
