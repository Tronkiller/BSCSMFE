# BSCSMFE
Block-SignOn-Convert-to-Shared-Mailbox-Forward-Email is a work tool I created to automate a routine task. This tool does exactly what the name suggests. 
All of this code relies entirely on the Microsoft ExchangeOnlineManagement and MSOnline module. Both of these modules can be found in psgallery for download. 

I plan on making changes to the name once the script is more mature. 

Currently in my workplace, there are times when I have to perform the following actions: 

1. Block Sign on to an account 
2. Convert to a Shared Mailbox and forward emails to another User mailbox (Optional) 
3. Remove Exchange License 

While the tasks do not take up a lot of time, I saw this as an oppurtunity to learn powershell scripting.



SETUP

In order to install the above mentioned modules you will need to run the following commands in an Elevated Powershell console (Note I am running Powershell Core 7.2.5): 

```
install-module ExchangeOnlineManagement
install-module Msonline
```
As long as these two modules are installed the only other remaining task is to modify the User Principal Name in the script (UPN). This needs to be replaced with a valid O365 admin profile from your organization.

You can modify this in the blocksignsharedmailbox.ps1 file 

![image](https://user-images.githubusercontent.com/3465050/181392313-97536697-b00a-4041-ae8c-f80dbd7f5dbb.png)

Once a valid UPN has been input this script upon execution will prompt each of it's actions in CLI.


I am open and seeking feedback
