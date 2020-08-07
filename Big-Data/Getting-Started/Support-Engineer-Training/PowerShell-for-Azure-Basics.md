[[_TOC_]]

#PowerShell Basics Training Session

::: video
<iframe width="640" height="360" src="https://msit.microsoftstream.com/embed/video/2540a1ff-0400-a521-1b85-f1ead5cf32c7?autoplay=false&amp;showinfo=true" allowfullscreen style="border:none;"></iframe>
:::

<details>
  <summary>Video Timestamps</summary>
**_Introduction_**

_**00:00**_ - Intro to Presentation
_**01:11**_ - What is PowerShell?
_**04:21**_ - Agenda
_**05:55**_ - Where to find PowerShell on Your Machine
_**08:25**_ - Running as Administrator

**_Basics of PowerShell Shell/Command Line_**

_**10:30**_ - Comments
_**13:06**_ - Shell Commands & Navigation
_**15:55**_ - Running a PowerShell Script

**_PowerShell Cmdlets_**

_**18:10**_ - Basics
_**20:33**_ - Running Cmdlets
_**25:13**_ - Parameters
_**26:30**_ - Using Get-Help
_**28:53**_ - Syntax
_**33:05**_ - Outputs
_**35:20**_ - | (Pipes)
_**44:15**_ - Aliases
_**48:45**_ - Variables
_**52:20**_ - $_

**_Azure PowerShell_**

_**55:45**_ - Installing Azure PowerShell Modules
_**58:25**_ - Import-Module
_**59:45**_ - Updating Modules
_**1:00:05**_ - Signing In to Azure
_**1:02:35**_ - Azure PowerShell Cmdlets
_**1:05:50**_ - Azure PowerShell Example
_**1:12:09**_ - Azure RM Module vs Azure Az Module

**_PowerShell Scripting_**

_**1:16:07**_ - Script Basics
_**1:18:45**_ - Script Outputs
_**1:23:08**_ - If Statements
_**1:28:30**_ - ForEach Loops
_**1:31:58**_ - While Loops
_**1:35:16**_ - Parameters
_**1:41:40**_ - Functions
_**1:43:48**_ - Sending Scripts over Email or Teams

**_Outro_**

_**1:44:55**_ - Closing and Discussion

</details>

# PowerShell Basics
##Running A PS Script
### Shell
1. From the PowerShell Shell, navigate to the folder where your script is stored.
2. Use .\<Name of your .ps1 file> to run.

For example:
![image.png](/.attachments/image-f3e35233-dae8-4d77-b8f0-9321b1a0d1c7.png)

### From a PS1 File
1. Navigate to your .PS1 file in a file explorer.
2. Right-click the .ps1 file and select "Run in PowerShell"

For example:
![image.png](/.attachments/image-bc81c240-42c8-4adb-a2ef-fa1bc2628d95.png)

### Using the ISE
1. Open your script using the PowerShell ISE.
2. To run the full script you can either:
a. Use the Shell at the bottom to run the script as if from a shell.
b. Use the 'Play' button to run the full script.
![image.png](/.attachments/image-43bad967-6e58-4b28-88e5-6ab3d0142d27.png)

3. To run a particular section or sub-section of your script:
a. Highlight the portion you wish to run.
b. Run the selection using play-selection button.
![image.png](/.attachments/image-86349d3b-fc4d-4597-92a9-85ca291e6c54.png)

## Comments

### Regular Comments

```
#Comments are preceeded by a #, and everythin in the line after the # is ignored by PowerShell
```

### Block Comments

```
<# Block comments are written like this, between two # and carrots. 
Anything between the markers is ignored by PowerShell #>
```

## Shell Commands

You can use shell commands to navigate through your machine in the Shell. 
There are many commands, but we’ll go over the four I use most frequently:

        dir - lists the files/folders in your current directory.
        cd <Directory Name> – (change directory) points to indicated directory.
        cd .. – points you to previous directory.
        .\<ScriptName> - run a PowerShell Script.

## Cmdlets

A cmdlet is a lightweight command that PowerShell uses for its shell and scripts.
A cmdlet is a verb-noun pair that tells you:
            1. What you’re doing.
            2. The object of that action.

For example:

            Get-Help
            Add-AzDataLakeStoreFirewallRule
            Remove-AzDataFactoryPipeline
            Set-AzHDInsightClusterSize
            Connect-AzAccount
            Install-Module
            Start-AzStreamAnalyticsJob
            New-AzDatabricksWorkspace
Approved PS Verbs:
        https://docs.microsoft.com/en-us/powershell/scripting/developer/cmdlet/approved-verbs-for-windows-powershell-commands?view=powershell-7

## Parameters

Many cmdlets have parameters that can determine/customize what the cmdlet will do.
The ISE will suggest possibilities for you, which is nice.

If you forget a cmdlets parameters, you can use Get-Help to list out
  
        Get-Help -Name "Remove-AzDataFactoryPipeline"
        
Want to see examples of a command? Use Get-Help -Examples

        Get-Help -Name "Start-AzStreamAnalyticsJob" -Examples


You don't always need the name of the parameter to use it, though:

        Get-Help -Name "Connect-AzAccount"

        Get-Help "Connect-AzAccount"

Cmdlets have a list of parameters, some mandatory, some optional.
You can see which are which when you use 'Get-Help'

For example, if you run:

            Get-Help "Get-Help"

This comes back:
SYNTAX
Get-Help [[-Name] <string>] [-Path <string>] [-Category {Alias | Cmdlet | Provider | General | FAQ | Glossary | HelpFile | ScriptCommand | Function | Filter | ExternalScript | All | DefaultHelp | Workflow | DscResource | Class | Configuration}] [-Component <string[]>] [-Functionality <string[]>] [-Role <string[]>] [-Full]  [<CommonParameters>]

Brackets ([]) mean optional

So see [-Path <string>] - you can provide a path, but don't have to.

Brackets can also go around the name of the parameter, meaning providing that parameter name is optional!

 So see [[-Name] <string>]

This means if you just provide a string Get-Help will assume you are providing the name.

Curly Brackets ({}) show options for a parameter.

See -Category

## Outputs 

 Most cmdlets have an output of some kind, and the output will be displayed in the command shell after the cmdlet is run.

You'll notice many cmdlets have outputs with several properties, for example

Get-Module has several properties:
ModuleType, Version, Name, Exported Commands, etc...

We can have all these properties returned, or we can select a single property using the humble '.'

For example:

```
(Get-Module).Name
```

This will return only the name property of all modules
The parens () contain the output and allow you to select some aspect using .

Pipes pass data from one cmdlet to the next.
Think of a pipe as connecting the cmdlets and moving data through itself from the first to the second.

For example:

Returns all currently running services on your machine
        Get-Service

Sort-Object will... sort the returned object by any property you specify
        Get-Service | Sort-Object -Property Status 

Something you'll use more regularly...
Out-File will write any output to a file of your choosing

        "The quick, brown fox jumps over the lazy dog." | Out-File -FilePath TestOutput.txt
        
You can even use multiple pipes!
This will return only the display name of all running services AND output them to a file:

        Get-Service | Where-Object -FilterScript { $_.status -eq "Running"} | Select-Object displayname | Out-File -FilePath "CurrentProcesses.txt"
    
So what's happening there?

Get-Service is returning all services. 
Where-Object is recieving the full list of all services from the pipe and using a filter script to select only the services that have a status of 'Running'

The $_ is a variable that represents the current object in a list of objects.
We'll discuss variables next!

Select-Object is recieving all the 'Running' services from the pipe, and is selecting only the 'DisplayName' part of the object.

Out-File is receiving the list of all display names from the pipe and outputting it to a file.

## Aliases

PowerShell also makes use of 'Aliases', which are shortened cmdlet names.

For example, remember Get-Help?

Try just 'Help'

This will mostly come into play when you are reading other PS scripts online and wondering what on earth is happening. Remember aliases exist!

Want to know what aliases you can use?

        Get-Alias

        Get-Alias -Definition "Where-Object"
        
        Get-Alias -Definition "Select-Object"

From the above, we can see that Where-Object can shorten to ? or 'where'
And Select-Object can shorten to 'Select'
So our get-service script can look like this:

        Get-Service | ? -FilterScript { $_.status -eq "Running"} | select displayname | Out-File -FilePath "CurrentProcesses2.txt"

## Variables

PS (PowerShell) variables are a string preceded by a $ and can be used to store all kinds of values.

Set variables using =

Return their value simply by listing the variable name.

        $ArrayVariable = 1,2,3
        $StringVariable = "A new string is born!"

        $ArrayVariable

        $StringVariable

        $ArrayVariable[1]

You can also store the output of a cmdlet in a variable:

        Get-Module

        $ModuleOutput = Get-Module

        $ModuleOutput

        #You can even store the output of a script!

        $TestScriptOutput = .\TestProgram.ps1

        $TestScriptOutput
    
Let's talk about $_

$_ is a placeholder, a variable like any other, but rather than holding a specific value that you have set, it holds the current value of a multi-part object.

For example:

Get-Module returnes several modules, and let's say we only wanted the 'Az' ones.

We would need to use a Where-Object command, and we can use a pipe for this.

Where-Object is going to iterate over all the elements in that object, and we can ask it to run a particular filtering script over each object to filter it down to the elements we want.

For example:
        Get-Module | Where-Object -FilterScript {$_.Name -match "Az"}

So what's happening there?
The 'Where-Object' cmdlet is looking over every returned object from 'Get-Module's output. For all those objects we want it to look at the Name property and do something with it.

Recall using . to select a particular property from an output.

So we can say (Get-Module).Name, which will return all modules, but only their names.

$_ is standing in for Get-Module, since we've already run Get-Module and have 'piped' the output to Where-Object to use.

# Azure PowerShell

PowerShell on your machine doesn't automatically come with Azure Functionality, though that's very important to us.

Thankfully, Azure Modules are easy to install and update.
1. Run PowerShell as Administrator
2. Check your version of PS and make sure it is at least 5.1 

If it is not, go here: https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-4.4.0#requirements
        
    $PsVersionTable.PSVersion

3. Install

    Install-Module -Name Az -AllowClobber

Answer "Yes" or "Yes to All"

If for some reason module autoloading is disabled, you may need to import the module using Import-Module -Name Az

For every new session/script. (This sometimes happens with customers.)

## Using Azure PowerShell

If you every need to update the Az module, simply use

    Update-Module -Name Az -AllowClobber

Now that you have the modules installed you can use Azure PowerShell to interact with your subscription and various resources.

First you'll need to sign in (to use your credentials against your own resources.)
Then you'll need to select your subscription to confirm you are interacting with the correct subscription.

Then you're free to interact with your subscription as you are allowed to.

For example:

    Connect-AzAccount

This will set your context to a specific subscription/tenant.
Important to run this to make sure you are interacting with the right environment.

    Set-AzContext -Subscription "subscriptionID"


Now that you've loaded the Azure PowerShell modules, connected to your account, and set your subscription you can interact with your Azure resources however you like!

What commands are available for your resources? How can you know what's possible?

Check the internet!

1. Search the documentation for your Azure resource.
2. On the left-hand menu go to 'Reference' and then 'PowerShell'

There will be a list of all the possible PowerShell commands for your resource type.

For example-- ADLS Gen 1: https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/?view=azps-4.4.0

Alternatively:

1. Search the documentation for your Azure resource.
2. In the search bar on the left-hand menu search "PowerShell"
3. Any existing reference link for PowerShell will pop up, but any 'how to' or 'getting started' articles for PowerShell will also pop up for your reference.

These often have lots of great examples.

For example -- ADF Get Started with PowerShell: https://docs.microsoft.com/en-us/azure/data-factory/quickstart-create-data-factory-powershell

# PowerShell Documentation
https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7

#PowerShell Basics Training Scripts

##Full Introduction Script, Used in Session
[Intro to PowerShell.ps1](/.attachments/Intro%20to%20PowerShell-6cb36ef7-67f2-4160-b8d5-a9cd4b69cbef.ps1)

## Basic Output Script
[TestProgram.ps1](/.attachments/TestProgram-c3b757ba-0c26-46b3-8684-f22f9d3a877a.ps1)

## Basic Parameters Script
[ParamTextTest.ps1](/.attachments/ParamTextTest-094481ca-b1b6-48db-b2b8-9a993ffacdc0.ps1)

## Script That Writes to Another File
[TestProgramWithFileOutput.ps1](/.attachments/TestProgramWithFileOutput-bfd7277f-2e58-4072-8694-c5cb31ccd8c4.ps1)

