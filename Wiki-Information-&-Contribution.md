
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
#5377
#7329


## All Other Changes in Last Week

<table class="table table-bordered table-hover table-condensed">
<thead><tr><th title="Field #1">Date</th>
<th title="Field #2">Author</th>
<th title="Field #3">Change</th>
</tr></thead>
<tbody>

<tr>
<td>8/7/2020</td>
<td>Whitney Henderson</td>
<td>Updated PowerShell for Azure Basics</td>
</tr>
<tr>
<td>8/7/2020</td>
<td>Whitney Henderson</td>
<td>Updated Case Assignment Process</td>
</tr>
<tr>
<td>8/6/2020</td>
<td>Whitney Henderson</td>
<td>Updated Regional Subject Matter Experts (SMEs)</td>
</tr>
<tr>
<td>8/6/2020</td>
<td>Sundar Easwaran</td>
<td>Updated ADC Gen I | Introduction</td>
</tr>
<tr>
<td>8/6/2020</td>
<td>Whitney Henderson</td>
<td>Updated Support Engineer Training</td>
</tr>
<tr>
<td>8/6/2020</td>
<td>Whitney Henderson</td>
<td>Updated Support Training</td>
</tr>
<tr>
<td>8/6/2020</td>
<td>Whitney Henderson</td>
<td>Updated PowerShell for Azure Basics</td>
</tr>
<tr>
<td>8/5/2020</td>
<td>Whitney Henderson</td>
<td>Updated Survival Guide</td>
</tr>
<tr>
<td>8/5/2020</td>
<td>Derek Yang</td>
<td>Updated R-X - Write Permissions Vanishing</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Kusto Queries for ADF</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Deleted page &#39;/Big Data/Technical Troubleshooting/Product Specific Troubleshooting/POD - Data Movement/Data Factory | Azure Data Factory | ADF/Nested Pipeline or Pipeline Execution Troubleshooting&#39;.</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Refund Requests - Engaging the Billing Team</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Renamed page &#39;Billing &amp; Refund Requests&#39; to &#39;ASA - Billing &amp; Refund Requests&#39;</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Added Refund Requests - Engaging the Billing Team</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Support Training</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Case Handoff Process</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;Handoff - June012020-66270cb4-fb3a-4b21-9f0a-b9c24c795eeb.pptx&#39;.</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Case Notes</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;Note Taking - July062020 - Reduced Size-7a7dc91a-2064-4035-9559-c1d031f7de9b.pptx&#39;.</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Case Communication Best Practices</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;FQR-LQR-Comms- July202020-aff29e5c-802e-4bfc-b059-0abb3aef529f.pptx&#39;.</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Technical Troubleshooting</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;Troubleshooting Basics - June152020-5b5f9fd0-c13f-4016-8562-fa91c62c9b4c.pptx&#39;.</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;Data Lake Gen 1 Troubleshooting-676e6d73-0729-4173-9dfb-51ac20387b1a.pptx&#39;.</td>
</tr>
<tr>
<td>8/4/2020</td>
<td>Whitney Henderson</td>
<td>Updated Access Control Overview</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Tiffany Fischer</td>
<td>Updated ADC Gen I | Introduction</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Updated PowerShell for Azure Basics</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;Intro to PowerShell-6cb36ef7-67f2-4160-b8d5-a9cd4b69cbef.ps1&#39;.</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;TestProgramWithFileOutput-bfd7277f-2e58-4072-8694-c5cb31ccd8c4.ps1&#39;.</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;TestProgram-c3b757ba-0c26-46b3-8684-f22f9d3a877a.ps1&#39;.</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;ParamTextTest-094481ca-b1b6-48db-b2b8-9a993ffacdc0.ps1&#39;.</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Saving wiki attachment &#39;Intro to PowerShell-8d18193b-36e2-43bc-8fdc-d91af1f62dc8.ps1&#39;.</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Tiffany Fischer</td>
<td>Added ADC Gen I | Introduction</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Updated User-Deleted Data Recovery</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Reordered page &#39;/Big-Data/Getting-Started/Support-Engineer-Training/PowerShell-for-Azure-Basics&#39; to order &#39;2&#39;.</td>
</tr>
<tr>
<td>8/3/2020</td>
<td>Whitney Henderson</td>
<td>Added PowerShell for Azure Basics</td>
</tr>
<tr>
<td>7/31/2020</td>
<td>Andre Ferreira (Intl Vendor)</td>
<td>Reordered page &#39;/EEE-%2D-Embedded-Escalation-Engineer-Training-and-Reference/ASC-IcM-Template/How-to-create-an-ICM-Template&#39; to order &#39;0&#39;.</td>
</tr>
<tr>
<td>7/31/2020</td>
<td>Andre Ferreira (Intl Vendor)</td>
<td>Page &#39;How to manage ICM template mappings in ASC&#39; moved from parent &#39;/EEE - Embedded Escalation Engineer Training and Reference&#39; to &#39;/EEE - Embedded Escalation Engineer Training and Reference/ASC IcM Template&#39;</td>
</tr>
<tr>
<td>7/31/2020</td>
<td>Andre Ferreira (Intl Vendor)</td>
<td>Page &#39;How to create an ICM Template&#39; moved from parent &#39;/EEE - Embedded Escalation Engineer Training and Reference&#39; to &#39;/EEE - Embedded Escalation Engineer Training and Reference/ASC IcM Template&#39;</td>
</tr>
<tr>
<td>7/31/2020</td>
<td>Andre Ferreira (Intl Vendor)</td>
<td>Page &#39;How to Add-Update-Delete ICM Templates in ASC&#39; moved from parent &#39;/EEE - Embedded Escalation Engineer Training and Reference&#39; to &#39;/EEE - Embedded Escalation Engineer Training and Reference/ASC IcM Template&#39;</td>
</tr>
<tr>
<td>7/31/2020</td>
<td>Andre Ferreira (Intl Vendor)</td>
<td>Reordered page &#39;/EEE-%2D-Embedded-Escalation-Engineer-Training-and-Reference/ASC-IcM-Template&#39; to order &#39;2&#39;.</td>
</tr>
<tr>
<td>7/31/2020</td>
<td>Andre Ferreira (Intl Vendor)</td>
<td>Added ASC IcM Template</td>
</tr>
<tr>
<td>7/30/2020</td>
<td>Simmi Pastakia</td>
<td>Updated Daily Review Meeting ADLS &amp; ADLA</td>
</tr>
<tr>
<td>7/30/2020</td>
<td>Derek Yang</td>
<td>Updated Daily Review Meeting ADLS &amp; ADLA</td>
</tr>
<tr>
<td>7/30/2020</td>
<td>Lee Pauling</td>
<td>Updated View WFM Schedule Per POD</td>
</tr>
<tr>
<td>7/30/2020</td>
<td>Jeremy Li</td>
<td>Updated Case Communication Best Practices</td>
</tr>
<tr>
<td>7/29/2020</td>
<td>Whitney Henderson</td>
<td>Updated Wiki Information &amp; Contribution</td>
</tr>
<tr>
<td>7/29/2020</td>
<td>Whitney Henderson</td>
<td>Updated Wiki Change Log</td>
</tr>

</tbody></table>