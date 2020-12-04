#Viewing your (or anyone else's) POD's schedule in WFM
WFM has a schedule view that supports filter sets and groups.  This makes it easy to set up one or many filters and populate them with specific PODs to get a quick view of their availability.  Internet Explorer is the only browser in which this works and it takes a little effort the first time.  Here's what you'll have to do:

1.	Open **Internet Explorer**  (IMPORTANT! yes IE, you have to use IE for ) 
![ie_logo-sm.png](/.attachments/ie_logo-sm-33aacbf9-dd34-4e67-b68b-276c29a6b27e.png)  
2.	Navigate to https://wfm2/ 
3.	Click on the red “**Schedule View**” tile
![WFM-schedule-view.png](/.attachments/WFM-schedule-view-5e553abe-c754-4253-8d0f-92a1f223d117.png)
4.	A page with two sections and an Aspect icon in the lower right should appear
5.	Hit **F12** to bring up developer tools  (or upper right,  Gear -> F12 Developer tools)
6.	At bottom of page Switch to the Emulation tab
![WFM-aspect-em.png](/.attachments/WFM-aspect-em-f52b92b9-eaea-45cc-8909-90c4ef620101.png)
7.	Switch the Browser Profile to Enterprise
![WFMScheduleViewIEEmulation.png](/.attachments/WFMScheduleViewIEEmulation-dd68ca85-0075-41b1-b5f6-2e71c9397a00.png)
8.	This will likely prompt you for your credentials, enter them to proceed
9.	Click the “Schedule Viewer” link on the left
![WFMScheduleViewScheduleViewer.png](/.attachments/WFMScheduleViewScheduleViewer-37607044-389c-4249-93b8-6b6782daebec.png)

<br>

**PRO TIP's!!!!**  
- Install Silverlight: First time doing this- if your getting something that looks like this below you need to install  **[Silverlight](https://www.microsoft.com/getsilverlight/get-started/install).** 
![WFM-bad.png](/.attachments/WFM-bad-ed45f68b-2877-4f91-a32e-6f15a5897cd3.png)
Install Silverlight and reload page.
- Make sure to use the new link https://wfm2.corp.microsoft.com Also if they have any issue loading the Schedule Viewer, use IE as it works only in IE.
- Clear your cache. Please go to internet options, browsing history, delete. Make sure that all boxes are checked to delete cookies and favorites.
- Add WFM2 to Trusted Sites.  Under Internet Options – Select the Security Tab, select Trusted sites, click the “sites” button – Add https://wfm2 to the list (make sure the box that requires https is unchecked).
- Run IE in private mode.  Right click your IE icon and select in-private browsing session
- Add to compatibility View.   Click your setting gear in IE and select the Compatibility View Settings and add microsoft.com to the list.
- Reinstall Silverlight. If still having trouble with Schedule Viewer, make sure Silverlight 5.1 is loaded. reinstall it and reboot
- still having issues- aka.ms/itweb -> create case -> 1 Voice WFM application.   See if peers are having the same issue (if not your 1st time) 


<br>

If this is your first time looking at WFM2, you won't have a "GA" or "SR" group loaded. Below is what you would see if **GE SQL-Data Move SR** is what you viewed last (it saves your last group) in Multiple Day View:
![image.png](/.attachments/image-d2139c2c-a468-4317-acd5-95d94b3ffb0f.png)

10.	If you don’t see the group of people you want listed, click the filter icon at the top (and allow popups if prompted)
![WFMScheduleViewFliterIcon.png](/.attachments/WFMScheduleViewFliterIcon-8ff84eaa-bec2-453a-a0b1-f3e0d3231145.png)


11.	This will take you to the Select Employees popup window that lets you choose who you see in schedule viewer.  Click “**New...**” Note that yours will likely be blank unlike this screenshot
![image.png](/.attachments/image-2afeae18-fa36-42cd-a05a-1700e2f0630e.png)

12.	Once that is up, Name your filter (I’m setting up a _**DataMoveAMER**_ a group here, so I’ve named it accordingly), Click the “**Use in filter**” checkbox, and Expand “**Group Allowance**”
![WFMScheduleViewFilterConfig1.png](/.attachments/WFMScheduleViewFilterConfig1-0739664a-62ec-4288-bf7f-94d462945655.png)

13.	Scroll down to find the groups whose schedules you’d like to view, for the Americas use **GE SQL-Data Move AMER (GA)** and check them (I’m selecting the NA/MT DM groups here, you can choose whichever groups are relevant to you), then click **OK**
![WFM-GA-select.png](/.attachments/WFM-GA-select-a2d17783-5e84-4263-bfd8-e1b45e864fad.png)

14.	You will see your filter show up in the saved filters list and the members of it show up under the Selected box.  You can then remove people from that list by selecting them and hitting the < button if you’d like.
![image.png](/.attachments/image-c9c5e990-804b-4bd9-8374-decdb1fd7a36.png)

15.	Tap **OK** on this window and it will take you back to the schedule view and show everyone’s schedule.  Note that the next time you come back to WFM, you will not need to create a new filter, it will use the last one you had active.  At this point you can tap F12 to turn off Developer to save resources.  Below is what you should see, Note for the first day I've expanded the column to show the **GE SQL-Data Move SR**. 
![image.png](/.attachments/image-ba40bfab-6754-45b2-b5a4-0dcaac2b3984.png)

Note the SR is the Staff Group which is rolled up from the regional GA's and is availability time for VDM and the Duty Managers.  The GA view makes it easier to see regional alias, however its as good as what the Duty Managers and Managers have put in for everyone while keeping it updated.

16.	In order to see an hour-by-hour breakdown of everyone’s availability for a specific day, click on that date at the top of the schedule view.  Note, First day was expanded to see SR. 
![image.png](/.attachments/image-aae5c2b8-75f4-4ff8-a77d-6e9d97930fce.png)

17.	You will now see an hour-by-hour view of everyone you’ve selected for that day
![image.png](/.attachments/image-326e1693-261c-4103-b578-37a916acfd6f.png)
Note, WFM2 uses your local timezone based of our OS.  The example above is in **CDT (UTC-5)**
Note, as part of the Data Movement re-org / alignment, Mindtree was put into the GA's they are most aligned to. Hence 40 alias's in AMER GA instead of 21 (as of July, 2020) 

And thats how you use WFM Schedule view in IE to view most of your engineering peers.  


 **PRO TIP!!!!**  To actually see the entire Data Movement team the way WFM and the Duty Managers (Case Buddy) do its highly recommended to also make a SR filter.  its basically the same steps except instead of selecting Group Allowance your selecting **GE SQL- Data Move SR** under **StaffGroup** as noted below:
![WFM-SR-filter.png](/.attachments/WFM-SR-filter-d39604c3-b8ca-4fe7-979a-e71b5cfe7302.png)

Note its now 115 aliass. 
![WFM-SR-select.png](/.attachments/WFM-SR-select-249dbffa-0af4-439a-9c3b-0a889cb4b00b.png)
 tap **OK**. 
![WFM-sr-multi-good.png](/.attachments/WFM-sr-multi-good-916aa262-24f2-45e1-bd22-225fd6eee1af.png)
and ta-da multiday of entire team.  drill into a day for per 30 min.  Just like the other example tap a day to drill in. 

 **PRO TIP!!!!**  to pull a day into Excel .  use the select all icon by clicking on it (below) then control-p into a new Excel tab. 
![WFM-select-all.png](/.attachments/WFM-select-all-db9ca7ab-ef50-4729-97d4-3fcdb90b5f4b.png)
