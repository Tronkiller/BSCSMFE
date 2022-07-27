# Block Sign on and Convert to Shared Mailbox v1 
write-host "Block Sign-On and Convert to Shared Mailbox version 1 `nBy Saani Maula" 



Import-module msonline
Import-module ExchangeOnlineManagement


#Log on to Admin profile. Replace <UPN> with email address
connect-exchangeOnline -Userprincipalname 365_saani@pillartopost.com
connect-MsolService

#Provide option to block the user

$email = read-host "What is the target email?" 

$blocksign = read-host "Would you like to block sign on for $email `n y or n"
echo "blocksign is set to $blocksign"

function block-signon {
	if ($blocksign.toLower() -eq "y") {
		Set-MsolUser -UserPrincipalName "$email" -BlockCredential $true
		echo "Successfully blocked sign on for $email"
		}
	else {
		echo "Failure"
		}		
}		

# Find status of UserMailbox (Shared/User)

#$mailtype = Get-Mailbox $email | Select-string "RecipientMailbox"

#$convert = read-host "Would you like to convert to a shared mailbox for email forwarding `n y or n" 

#function convertShared {
#	if ($convert.toLower() = "y") {
#		
#	}

Disconnect-ExchangeOnline -Confirm:$False
	
