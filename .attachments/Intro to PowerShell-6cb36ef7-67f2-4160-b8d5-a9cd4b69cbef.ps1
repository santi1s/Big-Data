# Title Card
<#

Intro to PowerShell

whhender August 2020


As usual, this will all be up on the wiki--

Search 'PowerShell' and it will pop right up!

#>

#What is PowerShell?
<#
So -- what is PowerShell?

PowerShell is a cross-platform task automation and configuration management framework, 
consisting of a command-line shell and scripting language. Unlike most shells, which 
accept and return text, PowerShell is built on top of the .NET Common Language Runtime (CLR), 
and accepts and returns .NET objects. This fundamental change brings entirely new tools and 
methods for automation.

https://docs.microsoft.com/en-us/powershell/scripting/overview?view=powershell-7)



Translation?


PowerShell is a native to Windows task automation language with both command-line 
and scripting elements.

Which is to say, you can write complex PowerShell scripts, or enter commands
directly from the shell.

#>

#Why do we need PowerShell?
<#

Almost all of our products here in Azure have PowerShell cmdlets (we’ll talk about those later) available!
PowerShell can be a quick and easy way to build out Azure tools, work with Azure resources remotely, 
or fill in if the Azure Portal isn’t working as expected.
Also, our customers use PowerShell!

#>

#Outline for This Presentation/Script
<#
1. PowerShell Basics

2. Azure PowerShell

3. PowerShell Documentation

4. Demo Scripting

At the end, I will send out this script to everyone who is
on the Presentation invite! It will also be available on the
wiki. Again, just search "PowerShell" and you'll find today's
session and this script.



The very best part about PowerShell is that its not new and there are
TONS of guides online. My tutorial not speaking to you? Want a little
more information on a particular topic? Search it online!!

There's so much information. Today's goal is to help you understand
the basics so you know what you're looking at!
#>

#Where Do You Even Find "PowerShell" on your machine?
<#

There are two places on your machine, and one in the Azure Portal!

Windows Machine:

1. Go to the search bar on your machine and search 'PowerShell'
2. You'll see two options:
    a. Windows PowerShell
    b. Windows PowerShell ISE

    Windows PowerShell - the command line/command shell you can use to enter/use some quick commands.

    Windows PowerShell ISE - (Integrated Scripting Environment) The ISE has a space for writing scripts,
    but also includes a command line/command shell you can use to do some quick commands/testing.


'Run as Administrator' - select this option when you need PowerShell to make changes to your machine.

For example, if you need to update your version of PowerShell or install a module.
If you need PowerShell to install or remove software, run as administrator.



Azure Portal:

1. Open the Azure Portal and select the little 'Command Shell' icon to the right of the search bar
at the top of the page
2. The command shell will appear at the bottom of your browser. In the top, left corner, be sure to
select 'PowerShell' if it is not already selected.



#>

#Basics of PowerShell Shell
{

#Comments
    {
        #This is a comment! Comments are preceeded by a #.
        #Anything on a line after the # is ignored when you
        #run a script.

        #For example, let's run these:

        ## This won't have any output.
        #Hello World!

        ## But this will have an output!
        Write-Output "Hello, World!"
    }

#Block Comments
    <#

        This is a block comment! We've been using them today to create our
        chunks of text. Anything beween the carrot and # is ignored when
        a script is run.

        For example, put this whole block comment intro in the command line!
        See what happens.

    #>

#Shell Commands
    {
        <#
        You can use shell commands to navigate through your machine in the Shell. 
        There are many commands, but we’ll go over the four I use most frequently:

        dir - lists the files/folders in your current directory.
        cd <Directory Name> – (change directory) points to indicated directory
        cd .. – points you to previous directory
        ./<ScriptName> - run a PowerShell Script

        #>

        cd "Desktop"

        #This should of course be pointed to wherever you have housed your own
        #"PowerShell Basics" folder.
        cd "Current Projects\Presentations\Big Data Support Success\PowerShell Basics\"
         
        dir

        cd ..

        dir

        cd "PowerShell Basics"

        .\TestProgram.ps1

    }

#Cmdlets
    {
        #What is a cmdlet?
        <#
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

        #>

        #This will return all the variables in your current session.
        Get-Variable

        #This will return all available cmdlets:
        Get-Help -Category Cmdlet

        #Cmdlet Parameters
        <#

        Many cmdlets have parameters that can determine/customize what the cmdlet will do.
        The ISE will suggest possibilities for you, which is nice.

        In a blank space below this comment box type:

        Get-Help -

        You'll see a list of possible parameters pop up.

        #>

        #Below this is a nice blank space to try out the ISE suggestion:



        #If you forget a cmdlets parameters, you can use Get-Help to list out
  
        Get-Help -Name "Remove-AzDataFactoryPipeline"
        
        #Want to see examples of a command? Use Get-Help -Examples

        Get-Help -Name "Start-AzStreamAnalyticsJob" -Examples


        #You don't always need the name of the parameter to use it, though:

        Get-Help -Name "Connect-AzAccount"

        Get-Help "Connect-AzAccount"

        #So what's happening there?
        <#
            Cmdlets have a list of parameters, some mandatory, some optional.
            You can see which are which when you use 'Get-Help'

            For example, if you run:

            Get-Help "Get-Help"

            This comes back:
                SYNTAX
                Get-Help [[-Name] <string>] [-Path <string>] [-Category {Alias | Cmdlet | 
                Provider | General | FAQ | Glossary | HelpFile | ScriptCommand | Function 
                | Filter | ExternalScript | All | DefaultHelp | Workflow | DscResource | 
                Class | Configuration}] [-Component <string[]>] [-Functionality 
                <string[]>] [-Role <string[]>] [-Full]  [<CommonParameters>]

                Brackets ([]) mean optional

                So see [-Path <string>] - you can provide a path, but don't have to.

                Brackets can also go around the name of the parameter, meaning providing that 
                parameter name is optional!

                So see [[-Name] <string>]

                This means if you just provide a string Get-Help will assume you are providing the name.

                Curly Brackets ({}) show options for a parameter.

                See -Category
        #>
            
            Get-Help "Get-Help"

        #Outputs
        <#

        Most cmdlets have an output of some kind, and the output will be displayed
        in the command shell after the cmdlet is run.

        You'll notice many cmdlets have outputs with several properties, for example

        Get-Module has several properties:
        ModuleType, Version, Name, Exported Commands, etc...

        We can have all these properties returned, or we can select a single
        property using the humble '.'

        For example:

        #>

        #This will return only the name property of all modules
        #The parens () contain the output and allow you to select some aspect using .
        (Get-Module).Name

        #Pipes
        <#
        Pipes pass data from one cmdlet to the next.
        Think of a pipe as connecting the cmdlets and moving data through itself
        from the first to the second.

        For example:

        #>

        #Returns all currently running services on your machine
        Get-Service

        #Sort-Object will... sort the returned object by any property you specify
        Get-Service | Sort-Object -Property Status 

        #Something you'll use more regularly...
        #Out-File will write any output to a file of your choosing

        "The quick, brown fox jumps over the lazy dog." | Out-File -FilePath TestOutput.txt
        
        #You can even use multiple pipes!
        #This will return only the display name of all running services AND output them to a file:

        Get-Service | Where-Object -FilterScript { $_.status -eq "Running"} | Select-Object displayname | Out-File -FilePath "CurrentProcesses.txt"
    
        #So what's happening there?
        <#

         Get-Service is returning all services. 
         Where-Object is recieving the full list of all services from the pipe 
            and using a filter script to select only the services that have a status of 'Running'

            The $_ is a variable that represents the current object in a list of objects.
            We'll discuss variables next!

        Select-Object is recieving all the 'Running' services from the pipe, and is selecting
            only the 'DisplayName' part of the object.

        Out-File is receiving the list of all display names from the pipe and outputting it to a file.

        #>


        #Aliases 
        <#
        PowerShell also makes use of 'Aliases', which are shortened cmdlet names.

        For example, remember Get-Help?

        Try just 'Help'

        This will mostly come into play when you are reading other PS scripts online
        and wondering what on earth is happening. Remember aliases exist!

        Want to know what aliases you can use?

        Try Get-Alias
        #>

        Get-Alias

        Get-Alias -Definition "Where-Object"
        
        Get-Alias -Definition "Select-Object"

        #From the above, we can see that Where-Object can shorten to ? or 'where'
        #And Select-Object can shorten to 'Select'
        #So our get-service script can look like this:

        Get-Service | ? -FilterScript { $_.status -eq "Running"} | select displayname | Out-File -FilePath "CurrentProcesses2.txt"
   
        #We can pair this down even further. Remember, you don't always need to have the names of parameters either.
        #Use Get-Help for both Out-File and Where-Object 
        #Both -FilterScript and -FilePath are optional parameter names.
        #So our script can even look like this:

        Get-Service | ? { $_.status -eq "Running"} | select displayname | Out-File "CurrentProcesses2.txt"
   
    }

#Variables
    {
        
        #General
        <# 
        PS (PowerShell) variables are a string preceded by a $ 
        and can be used to store all kinds of values.

        Set variables using =

        Return their value simply by listing the variable name.

        For example:

        #>

        $ArrayVariable = 1,2,3
        $StringVariable = "A new string is born!"

        $ArrayVariable

        $StringVariable

        $ArrayVariable[1]

        #You can also store the output of a cmdlet in a variable:

        Get-Module

        $ModuleOutput = Get-Module

        $ModuleOutput

        #You can even store the output of a script!

        $TestScriptOutput = .\TestProgram.ps1

        $TestScriptOutput
    
        #Let's talk about $_
        <#
         $_ is a placeholder, a variable like any other, but rather than holding a specific value
         that you have set, it holds the current value of a multi-part object.

         For example:

         Get-Module returnes several modules, and let's say we only wanted the 'Az' ones.

         We would need to use a Where-Object command, and we can use a pipe for this.

         Where-Object is going to iterate over all the elements in that object, and we can ask it to
         run a particular filtering script over each object to filter it down to the elements we want.

         For example:
        #>

        Get-Module | Where-Object -FilterScript {$_.Name -match "Az"}

        #So what's happening there?
        <#
        There 'Where-Object' cmdlet is looking over every returned object from 'Get-Module's output.
        For all those objects we want it to look at the Name property and do something with it.

        Recall using . to select a particular property from an output.

        So we can say (Get-Module).Name, which will return all modules, but only their names.

        $_ is standing in for Get-Module, since we've already run Get-Module and have 'piped'
        the output to Where-Object to use.

        #>
    }

}

#Azure PowerShell
{
    #Intro and Installation
    <#
    PowerShell on your machine doesn't automatically come with Azure Functionality,
    though that's very important to us.

    Thankfully, Azure Modules are easy to install and update.
    #>

    #1. Run PowerShell as Administrator
    #2. Check your version of PS and make sure it is at least 5.1 
    # If it is not, go here: https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-4.4.0#requirements
        
    $PsVersionTable.PSVersion

    #3. Install

    Install-Module -Name Az -AllowClobber

    #Answer "Yes" or "Yes to All"

    #If for some reason module autoloading is disabled, you may need to import the module using
    #Import-Module -Name Az
    #For every new session/script. (This sometimes happens with customers.)

    #Using Azure PowerShell
    <#

    If you every need to update the Az module, simply use

    Update-Module -Name Az AllowClobber

    to update in the future.

    Now that you have the modules installed you can use Azure PowerShell to interact with your
    subscription and various resources.

    First you'll need to sign in (to use your credentials against your own resources.)

    Then you'll need to select your subscription to confirm you are interacting with the
    correct subscription.

    Then you're free to interact with your subscription as you are allowed to.

    For example:
    #>

    #This will get you a little pop-up login box which will add your credentials
    #to your current script or session.
    Connect-AzAccount

    #This will set your context to a specific subscription/tenant.
    #Important to run this to make sure you are interacting with the right environment.
    #Add your susbscription ID into the quotes
    Set-AzContext -Subscription "subscriptionID"

     #Great! ...what now?
     <#

     Now that you've loaded the Azure PowerShell modules, connected to your account, and set your subscription
     you can interact with your Azure resources however you like!

     What commands are available for your resources?
     How can you know what's possible?

     I use the internet! Every time.

        1. Search the documentation for your Azure resource.
        2. On the left-hand menu go to 'Reference' and then 'PowerShell'

     There will be a list of all the possible PowerShell commands for your resource type.

     For example-- ADLS Gen 1: https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/?view=azps-4.4.0

     Alternatively:

        1. Search the documentation for your Azure resource.
        2. In the search bar on the left-hand menu search "PowerShell"
        3. Any existing reference link for PowerShell will pop up, but any 'how to' or
            'getting started' articles for PowerShell will also pop up for your reference.
            These often have lots of great examples.

     For example -- ADF Get Started with PowerShell: https://docs.microsoft.com/en-us/azure/data-factory/quickstart-create-data-factory-powershell

     #>

     #Let's Create an ADLS Gen 1 in our Subscription Using PowerShell
     <#

      1. You've already installed the Azure Modules
      2. You have connected with your Azure Account
      3. You have set your subscription context.
      4. You'll need to have a resource group already in your subscription.

      5. Search Data Lake Store Documentation for a PowerShell Reference:
          https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/?view=azps-4.4.0

      6. Look for a command with a verb-object pair that sounds like what you want to do.
          For us we'll probably be looking for New or Create.
          https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/New-AzDataLakeStoreAccount?view=azps-4.4.0

      7. Read description to confirm functionality.
          https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/New-AzDataLakeStoreAccount?view=azps-4.4.0

      8. Check parameters for inputs needed to run command.
          (Remember [] around the whole param means it is optional. Brackets around just the name means
          that listing the name is optional.)

            New-AzDataLakeStoreAccount
            [-ResourceGroupName] <String>
            [-Name] <String>
            [-Location] <String>
            [[-DefaultGroup] <String>]
            [[-Tag] <Hashtable>]
            [[-Encryption] <EncryptionConfigType>]
            [[-KeyVaultId] <String>]
            [[-KeyName] <String>]
            [[-KeyVersion] <String>]
            [-Tier <TierType>]
            [-DefaultProfile <IAzureContextContainer>]
            [<CommonParameters>]

            So we'll need at least ResourceGroupName, Name, and Location.

      9. If further information about the parameters is needed, or if you want an example, look under
          the 'Parameters' and 'Example' section of the article.
          Parameters: https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/New-AzDataLakeStoreAccount?view=azps-4.4.0#parameters
          Example: https://docs.microsoft.com/en-us/powershell/module/az.datalakestore/New-AzDataLakeStoreAccount?view=azps-4.4.0#examples

      10. Run the command!
      #>

    #This will create a newdata lake store in your subscription.
    #(Data Lake store names must be globally unique, so I suggest <alias>TestLake as your data lake name.

    $lakename = "EnterYourLakeNameHere"
        
    New-AzDataLakeStoreAccount -ResourceGroupName groupname -Name $lakename -Location locationname

    #Let's use PowerShell to check that the data lake resource exists now.

    Get-AzDataLakeStoreAccount

    Get-AzDataLakeStoreAccount | where {$_.Name -eq $lakename}

    Test-AzDataLakeStoreAccount -Name $lakename

    #The RM Module
    <#

    The Az PowerShell module is a relatively new module. The previous module was called
    "RM". Some of your customers may still be using this "RM" module, and you may see some
    guides also using these old "RM" cmdlets.

    Az PowerShell cmdlets always have 'Az' in the noun.

    Rm PowerShell cmdlets always have 'AzureRm' in the noun.

    You can use Rm cmdlets, but they are out of date. It is suggested to have your customer upgrade to 'Az'

    Also note, you cannot use Az and Rm cmdlets in the same session.

    If you use one type and need to use the other, you'll need to close out the Shell and open a new one.

    #>

}

#Basics of PowerShell Scripting
{
    #Overview - and your first PS Script
    <#

    Thankfully, with all the basics of PowerShell Commands in mind, 
    PowerShell scripting is very easy.

    You write all your commands in the order you wish them to be executed, 
    and save them in a file with a .ps1 extenstion. That's it!

    You can then navigate to its folder within a command shell and use .\ to run it.

    Or, you can navigate to it with a folder explorer, right click the .ps1 file and 
    then select "Run with PowerShell"

    For example:

        1. Create a new file called "PSScript.ps1"
        2. Open it and write Write-Output "Hello, World!"
        3. Save.
        4. Open a PS shell or PS ISE, navigate through the command line
           to the folder where you saved, and then run .\PSScript.ps1

           You should see "Hello, World!" pop up under your command!
    #>

    #Output - what comes back from a PS script
    <#

    Think of a PS script as basically just running one command after another in the command line.
    Whatever will come out if you ran these commands one at a time during a session will come out
    from your script as well.

    To stop this from happening, set any of your commands up with a varaible to catch the output.

    Example: $testresult = Test-AzDataLakeStoreAccount -Name $lakename

    or set them to void.

    Example: [void](Test-AzDataLakeStoreAccount -Name lakename)

    If you want to return a specific value from your script, set a variable

    $returnResult

    equal to that information, then end your script with $returnResult

    Remember, just entereing the name of a variable returns that variable's value.


    For example, write a script that says:

    $returnResult = "The Output"

    $returnResult

    You should get "The Output" in your returns.

    #>

    #If Statements
    <#

    Here's the most basic If statement:

            #The $true and $false variables are reserved for boolean values true and false

            $condition = $true
            if ( $condition )
            {
                Write-Output "The condition was true"
            }

            But there are also comparison operators you can use:

            -eq = equality check between two values
            -ne = not equals
            -gt = greater than
            -lt = less than
            -ge = greater than or equals to
            -like = matches part of a string with wildcards *
            -match = matches using a regex
            -is = checks value's type [like string]
            ....etc

            Find more here: https://docs.microsoft.com/en-us/powershell/scripting/learn/deep-dives/everything-about-if?view=powershell-7

            You can also write elseif statements for multiple if conditions

        #>

        #If Statement Example
        $condition = "running"

            if($condition -eq "Queued"){
                Write-Output "Waiting to Run"
            }

            elseif($condition -eq "success"){
                Write-Output "Finished -- Successful"
            }

            elseif($condition -eq "Failed"){
                Write-Output "Finished -- Failed"
            }

            else{
                Write-Output "Running"
            }

    #For Loops
    <#
    You can use PowerShell to iterate over a collection of items using a ForEach statement.

    A ForEach statement is written like this: 
    foreach ($<item> in $<collection>){<statement list>}

    $<collection> - should be a variable containing a collection you've already established.

    $<item> - a variable name you will use to reference the items within your statement.

    <statement list> - The code you want run on each item in your collection.

    For example:
    #>

    #For Loop Example
    $allModuleNames = (Get-Module).Name

    ForEach ($name in $allModuleNames){

        if($name -like "Az.*"){
            Write-Output $name
        }

    }

    #While Loops
    <#
        While loops in PowerShell are also fairly straight forward.

        While(<conditional statement>) {<statement list>}

        <conditional statement> - should be a statement that will evaulate to true or false.
        <statement list> - a script that will execute after each 'true' evaluation.

        Example:
    #>
    
    #While Example
    $whileArray = @("kitten", "puppy", "cub", "chick")
    $counter = 0;

    #This while loop will write out every value in the array.
    while($counter -lt $whileArray.length){
        Write-Output $whileArray[$counter]
        $counter += 1
    }


    #Parameters
    <#

    Want to be able to add parameters to your script at runtime?

    This is something really useful you can do to be able to treat a complex script
    more like a cmdlet.

    Here's all you need to do:

    At the top of your script add param()
        This will house all your parameters, separated by a comma.

    For example: (ParamTextTest.ps1)

    param($text, $moreText)

    Write-Output "This script will say anything we want! Like:"
    Write-Output $text
    Write-Output "And Also:"
    Write-Output $moreText


    You can also set default values:

    param(
        $text = "Default Text",
        $moreText = "More Default Text"
    )

    Or you can make a parameter mandatory and set its type:
   
    param
    (
        [Parameter(Mandatory=$true)]
        [string] $text,
        $moreText = "More Default Text"
    )
    
    #>
           
    #Functions
    <#

        A function is essentially just a little script inside your script which you can call again and again.

        You need to define your function before you call it.

        Here's how you define a function.

        Function <functionName>{<function script>}

        Then, to call the function you simply use the function name like a cmdlet:

        <functionName>

        For Example:

    #>

    #Simple Function Example
    function multiply{
        param([int]$firstValue,[int]$secondValue)

      $answer = $firstValue*$secondValue
      Write-Host "$firstValue x $secondValue = $answer"
    }

    multiply -firstValue 5 -secondValue 7




    ## When Sending a PowerShell Script to a customer-- or anyone!
    ## Save the script as a .txt, zip it, then send it.
    ## PS can execute commands directly against windows so many communications tools
    ## block sending PowerShell scripts to protect customers from malware.

}

#Finish
{
    <#
     There are so many things you can do with PowerShell Scripts and PowerShell!

     Try any of these quick scripts to get yourself started, or do a search online for
     example PowerShell scripts to get cool ideas or new samples!

     Again, this whole presentation is on the wiki! Just search "PowerShell"
    #>

}