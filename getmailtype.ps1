#GetMailboxType


Import-module msonline
Import-module ExchangeOnlineManagement


connect-exchangeOnline -Userprincipalname <UPN>
connect-MsolService


$email = read-host "What is the target email?" 

$getmail = (Get-Mailbox $email | format-List RecipientTypeDetails).toString()
$mailtype = $getmail.split() | select-string "Mailbox" 

echo "The current status of the mailbox is $mailtype"
$convertprompt = read-host "Would you like to convert this mailbox to a shared mailbox? `n y or n"

function Convert-Shared {
	if ($convertprompt.toLower() -eq "y") {
		Set-Mailbox -Identity $email -Type Shared
		echo "Mailbox status is now $mailtype"
		
	}
	else {
		echo "Mailbox status could not be changed"
		echo "Mailbox status is currently $mailtype"
	}
	}
Convert-Shared

Disconnect-ExchangeOnline -Confirm:$False