#Viewing your (or anyone else's) POD's schedule in WFM
WFM has a schedule view that supports filter sets and groups.  This makes it easy to set up one or many filters and populate them with specific PODs to get a quick view of their availability.  Internet Explorer is the only browser in which this works and it takes a little effort the first time.  Here's what you'll have to do:

1.	Open Internet Explorer 
2.	Navigate to https://wfm2/ 
3.	Click on the red “Schedule View” tile
4.	A page with two sections and an Aspect icon in the lower right should appear
5.	Hit F12 to bring up developer tools
6.	Switch to the Emulation tab
7.	Switch the Browser Profile to Enterprise
![WFMScheduleViewIEEmulation.png](/.attachments/WFMScheduleViewIEEmulation-dd68ca85-0075-41b1-b5f6-2e71c9397a00.png)
8.	This will likely prompt you for your credentials, enter them to proceed
9.	Click the “Schedule Viewer” link on the left
![WFMScheduleViewScheduleViewer.png](/.attachments/WFMScheduleViewScheduleViewer-37607044-389c-4249-93b8-6b6782daebec.png)
10.	If you don’t see the group of people you want listed, click the filter icon at the top (and allow popups if prompted)
![WFMScheduleViewFliterIcon.png](/.attachments/WFMScheduleViewFliterIcon-8ff84eaa-bec2-453a-a0b1-f3e0d3231145.png)
11.	This will take you to the Select Employees popup window that lets you choose who you see in schedule viewer.  Click “New.” Note that yours will likely be blank unlike this screenshot
![WFMScheduleViewNewFilter.png](/.attachments/WFMScheduleViewNewFilter-8c327701-fb6f-49a0-83ea-1fb3d0102f7e.png)
12.	Once that is up, Name your filter (I’m setting up a Data Movement North America group here, so I’ve named it accordingly), Click the “Use in filter” checkbox, and Expand “Group Allowance”
![WFMScheduleViewFilterConfig1.png](/.attachments/WFMScheduleViewFilterConfig1-0739664a-62ec-4288-bf7f-94d462945655.png)
13.	Scroll down to find the groups whose schedules you’d like to view and check them (I’m selecting the NA/MT DM groups here, you can choose whichever groups are relevant to you), then click OK
![WFMScheduleViewFilterConfig2.png](/.attachments/WFMScheduleViewFilterConfig2-0257ec4d-6587-4682-b8d1-b2df0602c0a5.png)
14.	You will see your filter show up in the saved filters list and the members of it show up under the Selected box.  You can then remove people from that list by selecting them and hitting the < button if you’d like.
![WFMScheduleViewFilterCreated.png](/.attachments/WFMScheduleViewFilterCreated-98cc9d4d-c76a-4d49-ab23-67faf21cef2c.png)
15.	Hit OK on this window and it will take you back to the schedule view and show everyone’s schedule.  Note that the next time you come back to WFM, you will not need to create a new filter, it will use the last one you had active.
16.	In order to see an hour-by-hour breakdown of everyone’s availability for a specific day, click on that date at the top of the schedule view
![WFMScheduleViewMultiDayView.png](/.attachments/WFMScheduleViewMultiDayView-8f1fbaa7-341e-4466-80ed-31f8b0deea4e.png)
17.	You will now see an hour-by-hour view of everyone you’ve selected for that day
![WFMScheduleViewDailyView.png](/.attachments/WFMScheduleViewDailyView-5842cd49-1b45-40d2-b826-6baa6d8657b0.png)