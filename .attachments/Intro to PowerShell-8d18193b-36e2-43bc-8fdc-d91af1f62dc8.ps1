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

#Basics of PowerShell Scripting & Commands
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

#Variables
    {
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
    
    }

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

        C:\Users\whhender\Desktop\Current Projects\Presentations\Big Data Support Success\TestProgram.ps1

    }
}
