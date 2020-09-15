## Workflow Steps

- Re-use steps since the guided troubleshooter is modular. For example, you can create one "Escalation Step" and point to it many times.

  ![good vs bad ts.png](/.attachments/good%20vs%20bad%20ts-1dc0b64c-0b4f-4bec-b4d9-5d37d4e6cb0b.png =300x )
- Keep it short and simple:  
  - Think critically about the most efficient way to troubleshoot a case
  - TSG Abandon rates are much higher for more complex/longer TSGs
  - Can your case be solved in a maximum of 7 questions? We suggest maximum 3 questions.
- Make sure every applicable support topic scenario can be covered by your TSG, otherwise your feedback rate for "unsupported scenarios" will be high.

    
##Geneva Automation 
- Geneva automation prod is the main workflow authoring tool
- Keep other completed troubleshooters open as a reference
- If you have a step used many times – like an escalation solution
  - Create a TSG/workflow just for that step using the same 3 step schema
  - You can then re-use that same workflow in many places
  - It doesn’t have to be a solution – it can be a more complex workflow
- Make your TSG modular – especially large branches
- Be aware of GA limitations – 25 “case choices” wide and 7 branches deep (but it stops on the 6th switch statement)
- Make sure step type starts with capital letter - Content / Insight
- Avoid using characters in steps renaming as it results in build errors


## GUIDs
- Use this [powershell script](https://microsoft.sharepoint.com/teams/ProjectCentennial/Shared%20Documents/Forms/AllItems.aspx?id=%2Fteams%2FProjectCentennial%2FShared%20Documents%2FTSGAuthor%2FTSGContent%2Etxt&parent=%2Fteams%2FProjectCentennial%2FShared%20Documents%2FTSGAuthor) or [online tool](https://www.guidgenerator.com/) to generate GUIDs for content, insight, and workflow steps
- To make build and test processes easier, make sure to document all used GUIDs per step. One suggested approach is to use excel sheet for easy filtering:

  ![guid doc.png](/.attachments/guid%20doc-ac648ef5-eef7-4d53-879d-544bc2676f78.png)

## Markdown 

- [Cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
- Headers formatting in:
  - Content steps - \*\*Header\*\*
  - Insight steps - \#\# \*\*Header\*\*