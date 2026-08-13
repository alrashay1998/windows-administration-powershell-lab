# windows-administration-powershell-lab
Hands-on Windows administration lab covering local user and group management, processes, services, system configuration, event log analysis, and PowerShell automation.


## About This Lab

I built this lab to get more hands-on practice with Windows administration and PowerShell. I wanted to go beyond learning the concepts and actually work with Windows users, processes, services, system configuration, and event logs inside a Windows VM.

I also created a small PowerShell script at the end of the lab to combine some of the administrative commands I practiced into one script.

## What I Worked On

### Users and Groups

I created a test user named `alex.morgan` and a local group called `SOC-Analysts` using Computer Management. I added the user to the group and verified the membership.

I then used PowerShell to work with the account, including checking the user, disabling the account, enabling it again, and verifying its status.

### Processes

I used Notepad as a test process and investigated it through Task Manager and PowerShell. I identified its PID, looked at information such as CPU and memory usage, and practiced starting and stopping the process from PowerShell.

### Windows Services

I used the Services console and PowerShell to inspect Windows services and their status. I practiced stopping and restarting a service and then verified that it was running again.

I also looked at the process ID associated with a running service to better understand the relationship between Windows services and processes.

### System and Network Information

I used Windows and PowerShell to inspect the VM's configuration, including:

* Windows and system information
* Hostname and current user
* IP address
* Default gateway
* DNS configuration
* Network adapter
* MAC address

### Event Viewer

I used Windows Event Viewer to look through Security logs and see how account activity is recorded.

I disabled my test account and then found the corresponding event in the Security log by filtering for the account-management Event ID and checking the target account.

This helped me connect an action performed in PowerShell with the evidence Windows records in its logs.

## PowerShell Script

At the end of the lab, I created:

`windows-system-audit.ps1`

The script collects several pieces of Windows information in one run, including:

* System information
* Current user
* Network configuration
* Local users
* Running processes
* Running services

Some of the PowerShell commands I worked with were:

`Get-ComputerInfo`
`Get-NetIPConfiguration`
`Get-LocalUser`
`Get-Process`
`Get-Service`

I also practiced using pipelines with `Select-Object`, `Sort-Object`, and `Where-Object` to filter and organize command output.

## Troubleshooting

I ran into a couple of problems while building the lab.

When I first tried running my script, PowerShell couldn't find it. I realized I was running PowerShell from `C:\Windows\System32` instead of the directory containing my script. After navigating to the correct directory and verifying the file was there, I tried again.

The script was then blocked by PowerShell's execution policy. Instead of permanently changing the system-wide policy, I used a process-scoped bypass for that PowerShell session and successfully ran the script.

Those issues gave me some additional practice troubleshooting PowerShell instead of only running commands when everything worked the first time.

## Skills Practiced

Windows Administration • PowerShell • User & Group Management • Process Management • Windows Services • System & Network Configuration • Event Viewer • Windows Security Logs • PowerShell Scripting • Troubleshooting
