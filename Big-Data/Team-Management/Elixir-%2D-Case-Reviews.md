[[_TOC_]]

# Elixir Tool
[aka.ms/elixir](https://elixir.microsoft.com/) 

# Data Movement

## Data Factory
Please start using Elixir ([aka.ms/elixir](https://elixir.microsoft.com/) as the new tool for ADF Low CSAT case reviews.
 
Sheldon recorded [this session](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fweb.microsoftstream.com%2Fvideo%2F6700a4ff-0400-a936-c080-f1eab05ac050&data=02%7C01%7Cwhhender%40microsoft.com%7Ca2fde56a07f24a972b9208d81313e15a%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637280323656706881&sdata=EhxorY1PoYixCdNekEijIiFR4Hz7Ril218Pn6WoFzO4%3D&reserved=0) to explain the process. Nevertheless, in a nutshell, here’s how the new process looks like:
 
 
**Step 1:** To gather the list of cases that require your review, go to Case Review channel on the [ADF – CSS Collaboration team](https://nam06.safelinks.protection.outlook.com/?url=https%3A%2F%2Fteams.microsoft.com%2Fl%2Fteam%2F19%253a768c7b4fcda64cd3acc29bc91eb98bfc%2540thread.skype%2Fconversations%3FgroupId%3D97f0bf0e-fe36-422a-9083-3e59230b5715%26tenantId%3D72f988bf-86f1-41af-91ab-2d7cd011db47&data=02%7C01%7Cwhhender%40microsoft.com%7Ca2fde56a07f24a972b9208d81313e15a%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637280323656706881&sdata=5rz%2F%2BhEsMyZFxy7AHhSUIrqWq78vYROwxVu1ETGgYVQ%3D&reserved=0) and open the [AllCases.xlsx](https://nam06.safelinks.protection.outlook.com/ap/x-59584e83/?url=https%3A%2F%2Fmicrosoft.sharepoint.com%2F%3Ax%3A%2Ft%2FADFCSSCollaboration-Review%2FERw5Om9Lj_dKmivDWGqWqfYBkRIb6pRmkZDvbu9cs6kFxg%3Fe%3DRiBX70&data=02%7C01%7Cwhhender%40microsoft.com%7Ca2fde56a07f24a972b9208d81313e15a%7C72f988bf86f141af91ab2d7cd011db47%7C1%7C0%7C637280323656716876&sdata=nBEdF7JAehFRW3AuUatlspj%2Fs6ugMtuxIxEDX7bKAGg%3D&reserved=0) file. 
 
**Step 2:** Filter on the Week or Month columns, depending on what time span do you want to consider, then check for all the alias of your respective region on the CSSOwner column:
 ![image.png](/.attachments/image-cb6642a8-0ed1-4fe2-bc8b-ee48e01bc98a.png)

 
**Step 3:** Within this subset of cases, check for the low CSAT cases (4* and below) that haven’t yet been reviewed, i.e., that still don’t have a CSSReviewer and the respective CSSComments:
 
![image.png](/.attachments/image-e765214e-f053-49d4-8bf1-beb1c1168500.png)


**Step 4:** Go to [aka.ms/elixir](https://elixir.microsoft.com/) and select “Complete case reviews”
 
![image.png](/.attachments/image-8fe90db1-3475-4db3-a288-f0447dd4e18e.png)
 
**Step 5:** Select the “60D Low CSAT Cases” query, search for the respective cases and open them:
 
![image.png](/.attachments/image-0132a1e8-c0cf-4f71-abce-e018da35999d.png)


 
**Step 6:** Open the selected case, add the tag [CSS:alias] and enter the comments, e.g.:
 ![image.png](/.attachments/image-3b84d0a3-2ff6-4e5c-94e9-4f250febb3c8.png)

 
Once this is done, a script created by Sheldon, which runs frequently, will make sure that the AllCases.xlsx file is populated after 4h, with the correct CSS reviewer alias and respective CSS comments.
 
 