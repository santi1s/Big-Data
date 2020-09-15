#Quick overview
Recently we have a few members from Microsoft Bing team running some **Scope** project on ADF to ADLA and have been experiencing "no permission and or unauthorized permission. 
Usually this will happen 

#Error code
Unauthorize error code
<IMG 

src="file://C%3A/Users/deya/AppData/Local/Temp/msohtmlclip1/02/clip_image001.png" 

width=1349  height=771 
alt="Machine generated alternative text:&#10;Microsoft Azure Data &#10;pipeline runs &#10;Data daug &#10;Type here to search &#10;All orocine nons gaDataProcesstng_SP - Acwaty runs &#10;Ad Data Processing _ S p &#10;from &#10;Rerun failed activity &#10;Advity Run Sta rt &#10;t) Refresh &#10;4 &#10;Activity runs &#10;Pipeline run ID &#10;Status v &#10;Shown; 6 of 6 items &#10;ng_S &#10;ing_SP &#10;Val i date•lnput_ &#10;nput_ &#10;nput_2 &#10;Succeed •d &#10;A ng_S p &#10;I ntegntio n &#10;Managed US 2) &#10;Mnäged (&quot;Vest US &#10;Managed (V,'est US 2) &#10;LIS 2) &#10;faultlntegr.tionRuntim. US 2) &#10;LIS 2' &#10;Error &#10;•2704&quot; &#10;•message'; is not to data lake &#10;•failureTy%: &#10;•tar* • : •adD.t.grQSSing—SZ'• &#10;x &#10;DataLakéAnalytizs 8/22/20, 123005 AM &#10;3/22/20, AM &#10;DeteLakeAna1y1i:s 8/22/20 &#10;8/21/20.1 &#10;Eon: 12 &#10;'-%c8-2ad731ai0db8 &#10;;-81ee-t.E4.873f792 &#10;Validation &#10;Val &#10;8/21/20, &#10;3/21/20. "/><IMG 


No Credential to perform action error code
src="file://C%3A/Users/deya/AppData/Local/Temp/msohtmlclip1/02/clip_image001.png" 

width=1345  height=774 
alt="Machine generated alternative text:&#10;Azure Data &#10;pipeline runs &#10;Trigg— &#10;Data d a ug &#10;Type here to search &#10;All pioctine rcns - Activity runs &#10;Ad Data Processing _ S p &#10;from &#10;Rerun failed activity &#10;Advity Run Sta rt &#10;t) Refresh &#10;4 &#10;Activity runs &#10;Pipeline run ID &#10;Status v &#10;Shown; Sot 6 items &#10;Ado &#10;Ado.taptming_sp &#10;ng_SP &#10;•d0at*ocessing-S' &#10;Val i date•lnput_ &#10;DataLakéAnalytizs 8/22/20, 123005 AM &#10;2/22/20, AM &#10;D.taLakeAna1yti:s 8/22/20. AM &#10;8/21/20. &#10;C&amp;J): 12 &#10;&quot;33: 12 &#10;nput_ 1 &#10;nput_2 &#10;Failed &#10;Succeed •d &#10;I ntegntio n &#10;Managed US 2) &#10;Vmäged ('West LIS &#10;Managed US 2) &#10;(West US 2) &#10;Defaultlntegr.tionRuntim. US 2) &#10;LIS 2' &#10;Error &#10;group name the &#10;aa&amp;N44'-86Sf-06acc6031b9f&quot; with c•oject ici &#10;rwt to action &#10;f.f998/ u n s,'Wcrcsoft D &#10;the is access was recently &#10;&quot;userError•, &#10;3-9f38fc6-68SNe43-81ee-b434.873f7S2 &#10;Val &#10;8/21/20, &#10;3/21/20. "/>"errorCode": "2010", "message": "Default ADLA store retrieval failed. Need appropriate subscription id, resource group name and ADLA account name. Encountered the following error: The client 'bcc1b22d-aada-4441-865f-b6acc6031b9f' with object id 'bcc1b22d-aada-4441-865f-b6acc6031b9f' does not have authorization to perform action 'Microsoft.DataLakeAnalytics/accounts/read' over scope '/subscriptions/121ed073-2274-4c26-8287-896e4afef998/resourceGroups/conv/providers/Microsoft.DataLakeAnalytics/accounts/bingads-bi-oi-c08' or the scope is invalid. If access was recently granted, please refresh your credentials.", "failureType": "UserError", "target": "AdDataProcessing_SP", "details": []

#Resolution 
According to ADLA PG recommendation, the role Data Lake Analytics Developer needs to be added to the user/Service Principal directly on the ADLA access control IAM. 
This should help with the case. 
 

