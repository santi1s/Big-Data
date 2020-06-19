
[[_TOC_]]

<center>

[![Wiki Feedback Button Smaller.jpg](/.attachments/Wiki%20Feedback%20Button%20Smaller-4fa394b2-fffd-4e4e-9601-0e1447d44fe9.jpg)](https://teams.microsoft.com/l/channel/19%3a5485372086bc4848b6cb913d975dc904%40thread.skype/Big%2520Data%2520Wiki%2520Feedback?groupId=d6c5d9c8-f14e-4cb6-a79a-1874c3b84cb6&tenantId=72f988bf-86f1-41af-91ab-2d7cd011db47)[![Wiki Work Items Button.jpg](/.attachments/Wiki%20Work%20Items%20Button-644af8fc-7a3a-4f80-8317-86829c0f0987.jpg)](https://dev.azure.com/Supportability/Big%20Data/_workitems/recentlyupdated/)

</center>

#How to Contribute

![Wiki Changes Chart.jpg](/.attachments/Wiki%20Changes%20Chart-d442b53f-8911-41d8-a119-5a70da74c648.jpg)

If you are adding a page, removing a page, changing major information, fundamentally updating a process, need a change to be made but cannot make it yourself, or if you want feedback on your changes before you make them, please create a work item and add all details so the change can be tracked.

Then edit the page as needed and complete the work item.

To make a change to any page, simply choose 'Edit' in the top, right hand corner of any page and make your edits!
![image.png](/.attachments/image-e31ec768-a73d-46ed-9e76-9f8590a8e72b.png)

## What Needs Doing?

Want to know what we need help working on, check our [work items](https://dev.azure.com/Supportability/Big%20Data/_workitems/recentlyupdated/) and feel free to pick up any unassigned tasks.

## Work Items
You can check existing work items or add other work items [here](https://dev.azure.com/Supportability/Big%20Data/_workitems/recentlyupdated/)!

### Add Work Item to a Page

If you add a work item for a page, please link it using the Ellipsis button in the top right hand corner and selecting "Link Work Items"

![image.png](/.attachments/image-99f7eeb6-4b24-4a57-a42a-fc34f17d0e35.png)


### Add Work Item for a Page

If you add a work item for a specific page, please add this flag to the top of the page, so others can see the work item.

```
<table border="1";bgcolor="#ffa7a7";>
<tr>
  <td style='border-style:solid;border-color:#f64e4e;background-color:#f9cccc;border-width:3pt; 
vertical-align:top;white-space: nowrap;padding:2.0pt 3.0pt 2.0pt 3.0pt'>  

<b> This page has an open work item! </b>
If you would like to contribute, please follow up here:
#<number of your work item>
</td>
</tr>
</table>
```

## Icons

Use [emoji syntax](https://docs.microsoft.com/azure/devops/project/wiki/markdown-guidance?view=azure-devops#emoji) to display icons. Some examples include:

:white_check_mark: `:white_check_mark:`
:large_orange_diamond: `:large_orange_diamond:`
:red_circle: `:red_circle:`

:x: `:x:`
:exclamation: `:exclamation:`
:question: `:question:`

:warning: `:warning:`
:no_entry: `:no_entry:`
:no_entry_sign: `:no_entry_sign:`

:+1: `:+1:`
:-1: `:-1:`

:small_red_triangle: `:small_red_triangle:`
:small_red_triangle_down: `:small_red_triangle_down:`

:star: `:star:`
:bulb: `:bulb:`
:key: `:key:`
:mag: `:mag:`

:zap: `:zap:`
:collision: `:collision:`
:fire: `:fire:`

:email: `:email:`
:phone: `:phone:`
:calendar: `:calendar:`
:link: `:link:`
:book: `:book:`

:construction: `:construction:`
:beginner: `:beginner:`

:uk: `:uk:`
:us: `:us:`
:jp: `:jp:`
:cn: `:cn:`

## Diagrams

Use [Mermaid syntax](https://docs.microsoft.com/azure/devops/project/wiki/wiki-markdown-guidance?view=azure-devops#add-mermaid-diagrams-to-a-wiki-page) to create diagrams, such as [flowcharts](https://mermaid-js.github.io/mermaid/#/flowchart) and [sequences](https://mermaid-js.github.io/mermaid/#/sequenceDiagram).

### Flowcharts

This is an example of [flowchart diagram syntax](https://mermaid-js.github.io/mermaid/#/flowchart):

```markdown
::: mermaid
graph TD
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
    style D fill:#f9f,stroke:#333,stroke-width:4px
    style E fill:#bbf,stroke:#f66,stroke-width:2px,color:#fff,stroke-dasharray: 5, 5
:::
```

It creates the following diagram:

::: mermaid
graph TD
    A[Hard edge] -->|Link text| B(Round edge)
    B --> C{Decision}
    C -->|One| D[Result one]
    C -->|Two| E[Result two]
    style D fill:#f9f,stroke:#333,stroke-width:4px
    style E fill:#bbf,stroke:#f66,stroke-width:2px,color:#fff,stroke-dasharray: 5, 5
:::

### Sequences

This is an example of [sequence diagram syntax](https://mermaid-js.github.io/mermaid/#/sequenceDiagram):

```markdown
::: mermaid
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: John is addicted<br/>to WebMD...
    alt rational thoughts prevail
        John-->>Alice: Great!
        John->>+Bob: How about you?
        Bob-->>-John: Jolly good!
    else channel Adrian Monk
        John->>Bob: I need a wipe.
        Bob->>+Alice: Do you have a wipe?
        Alice-->>-Bob: Why?
        John-->>Alice: Because there's a lot of gravity out there!
    end
    opt Alice gives John a wipe
        John-->>Alice: Thank you!
    end
:::
```

It creates the following diagram:

::: mermaid
sequenceDiagram
    participant Alice
    participant Bob
    Alice->>John: Hello John, how are you?
    loop Healthcheck
        John->>John: Fight against hypochondria
    end
    Note right of John: John is addicted<br/>to WebMD...
    alt rational thoughts prevail
        John-->>Alice: Great!
        John->>+Bob: How about you?
        Bob-->>-John: Jolly good!
    else channel Adrian Monk
        John->>Bob: I need a wipe.
        Bob->>+Alice: Do you have a wipe?
        Alice-->>-Bob: Why?
        John-->>Alice: Because there's a lot of gravity out there!
    end
    opt Alice gives John a wipe
        John-->>Alice: Thank you!
    end
:::

# Wiki Updates over Last Week (Updated Fridays)

## Work Items Completed in Last Week
#5884
#5889
#6122
#5724

## All Other Non-Product Changes
Updated June 5th, 2020

<table class="table table-bordered table-hover table-condensed">
<thead><tr><th title="Field #1">Date</th>
<th title="Field #2">Author</th>
<th title="Field #3">Change</th>
</tr></thead>
<tbody>

<tr>
<td>6/19/2020</td>
<td>Whitney Henderson</td>
<td>Updated Wiki Information &amp; Contribution</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Tiffany Fischer</td>
<td>Updated Activity Log</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Tiffany Fischer</td>
<td>Updated Azure Government Training &amp; Access (Fairfax)</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Derek Yang</td>
<td>Page &#39;SAW - Not able to access the Data Lake or Data Lake Analytics resources&#39; moved from parent &#39;/Big Data/Technical Troubleshooting/Product Specific Troubleshooting/POD - Data Movement/Data Lake Store/TSGs&#39; to &#39;/Big Data/Technical Troubleshooting/Product Specific Troubleshooting/POD - Data Movement/Data Lake Analytics/TSGs&#39;</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Derek Yang</td>
<td>Added SAW - Not able to access the Data Lake or Data Lake Analytics resources</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Whitney Henderson</td>
<td>Updated SSIS - SQL Server Integration Services</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Silvia Cimpurean</td>
<td>Updated Labor Tracking</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Whitney Henderson</td>
<td>Updated Technical Troubleshooting</td>
</tr>
<tr>
<td>6/18/2020</td>
<td>Silvia Cimpurean</td>
<td>Updated Regular Meetings</td>
</tr>
<tr>
<td>6/17/2020</td>
<td>Whitney Henderson</td>
<td>Updated Tools and Teams</td>
</tr>
<tr>
<td>6/17/2020</td>
<td>Whitney Henderson</td>
<td>Updated Technical Troubleshooting</td>
</tr>
<tr>
<td>6/17/2020</td>
<td>Tiffany Fischer</td>
<td>Updated Stream Analytics</td>
</tr>
<tr>
<td>6/17/2020</td>
<td>Prashanth Madi</td>
<td>Updated SIE - Service Impacting Event</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Whitney Henderson</td>
<td>Updated Technical Troubleshooting</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Travis LaGrone</td>
<td>Added CaseTriage V2</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Travis LaGrone</td>
<td>Reordered page &#39;/Resources&#39; to order &#39;3&#39;.</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Travis LaGrone</td>
<td>Added Resources</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Todd DeDecker</td>
<td>Updated SIE - Service Impacting Event</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Travis LaGrone</td>
<td>Updated SIE - Service Impacting Event</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Whitney Henderson</td>
<td>Updated SIE - Service Impacting Event</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Laila Haddad</td>
<td>Updated ASC Guided Troubleshooter</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Laila Haddad</td>
<td>Added ASC Guided Troubleshooter</td>
</tr>
<tr>
<td>6/16/2020</td>
<td>Prashanth Madi</td>
<td>Updated SIE - Service Impacting Event</td>
</tr>
<tr>
<td>6/15/2020</td>
<td>Tiffany Fischer</td>
<td>Updated Activity Log</td>
</tr>
<tr>
<td>6/15/2020</td>
<td>Whitney Henderson</td>
<td>Updated Technical Troubleshooting</td>
</tr>
<tr>
<td>6/14/2020</td>
<td>Jeremy Li</td>
<td>Updated Case Severity Management</td>
</tr>
<tr>
<td>6/11/2020</td>
<td>Prashanth Madi</td>
<td>Updated Big Data</td>
</tr>
<tr>
<td>6/11/2020</td>
<td>Sundar Easwaran</td>
<td>Renamed page &#39;View Schedule Per POD&#39; to &#39;View WFM Schedule Per POD&#39;</td>
</tr>
<tr>
<td>6/10/2020</td>
<td>Prashanth Madi</td>
<td>Updated SIE - Service Impacting Event</td>
</tr>
<tr>
<td>6/10/2020</td>
<td>Whitney Henderson</td>
<td>Updated SSIS - SQL Server Integration Services</td>
</tr>
<tr>
<td>6/10/2020</td>
<td>Whitney Henderson</td>
<td>Added SSIS - SQL Server Integration Services</td>
</tr>
<tr>
<td>6/10/2020</td>
<td>Whitney Henderson</td>
<td>Updated Wiki Change Log</td>
</tr>
<tr>
<td>6/10/2020</td>
<td>Whitney Henderson</td>
<td>Updated Wiki Information &amp; Contribution</td>
</tr>
<tr>
<td>6/9/2020</td>
<td>Whitney Henderson</td>
<td>Updated Kusto Queries for ADF</td>
</tr>
<tr>
<td>6/8/2020</td>
<td>Whitney Henderson</td>
<td>Updated Support Training</td>
</tr>
<tr>
<td>6/8/2020</td>
<td>Whitney Henderson</td>
<td>Updated Kusto Queries for ADF</td>
</tr>
<tr>
<td>6/5/2020</td>
<td>Whitney Henderson</td>
<td>Updated Kusto Queries for ADF</td>
</tr>
<tr>
<td>6/4/2020</td>
<td>Jeremy Li</td>
<td>Updated Weekend coverage</td>
</tr>
<tr>
<td>6/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Communication Best Practices</td>
</tr>
<tr>
<td>6/3/2020</td>
<td>Whitney Henderson</td>
<td>Updated Troubleshooting Access</td>
</tr>
<tr>
<td>6/3/2020</td>
<td>Whitney Henderson</td>
<td>Updated Access Control Overview</td>
</tr>
<tr>
<td>6/3/2020</td>
<td>Tiffany Fischer</td>
<td>Updated No Output Troubleshooting</td>
</tr>
<tr>
<td>6/3/2020</td>
<td>Jeremy Li</td>
<td>Updated Case Handoff Process</td>
</tr>
<tr>
<td>6/3/2020</td>
<td>Jeremy Li</td>
<td>Updated Case Severity Management</td>
</tr>
<tr>
<td>6/2/2020</td>
<td>Whitney Henderson</td>
<td>Updated Troubleshooting Access</td>
</tr>
<tr>
<td>6/2/2020</td>
<td>Tiffany Fischer</td>
<td>Updated Activity Log</td>
</tr>
<tr>
<td>6/2/2020</td>
<td>Tiffany Fischer</td>
<td>Reordered page &#39;/Big-Data/Technical-Troubleshooting/Product-Specific-Troubleshooting/POD-%2D-Data-Movement/Stream-Analytics/TSGs/Activity-Log</td>
</tr>
<tr>
<td>6/2/2020</td>
<td>Tiffany Fischer</td>
<td>Added Activity Log</td>
</tr>
<tr>
<td>6/1/2020</td>
<td>Whitney Henderson</td>
<td>Updated Case Handoff Process</td>
</tr>
<tr>
<td>6/1/2020</td>
<td>Tiffany Fischer</td>
<td>Updated Escalations | Creating ICMs</td>
</tr>
<tr>
<td>6/1/2020</td>
<td>Laila Haddad</td>
<td>Updated How to Add-Update-Delete ICM Templates in ASC</td>
</tr>
<tr>
<td>6/1/2020</td>
<td>Jeremy Li</td>
<td>Updated Case Handoff Process</td>
</tr>
<tr>
<td>5/30/2020</td>
<td>Kamal Thapa</td>
<td>Updated O&#39;Reilly Learning</td>
</tr>
<tr>
<td>5/30/2020</td>
<td>Kamal Thapa</td>
<td>Added O&#39;Reilly Learning</td>
</tr>
<tr>
<td>5/29/2020</td>
<td>Whitney Henderson</td>
<td>Added Increasing Limits &amp; Throttling</td>
</tr>
<tr>
<td>5/29/2020</td>
<td>Kamal Thapa</td>
<td>Updated Certification</td>
</tr>
<tr>
<td>5/29/2020</td>
<td>Whitney Henderson</td>
<td>Updated Pluralsight</td>
</tr>
<tr>
<td>5/29/2020</td>
<td>Kamal Thapa</td>
<td>Updated Pluralsight</td>
</tr>
<tr>
<td>5/29/2020</td>
<td>Whitney Henderson</td>
<td>Added Pluralsight</td>
</tr>
<tr>
<td>5/29/2020</td>
<td>Whitney Henderson</td>
<td>Updated Wiki Information &amp; Contribution</td>
</tr>
<tr>
<td>5/29/2020</td>
<td>Whitney Henderson</td>
<td>Updated Wiki Change Log</td>
</tr>

</tbody></table>5