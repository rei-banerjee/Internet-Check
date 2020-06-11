# In order to use you need to change the placeholders with the desired info

# RECOMMENDED - Use a dummy email to send the email. You need to lower the security on the account (allowing untrusted apps) and it is safer just to make a random email with no personal info for this.
$EmailFrom = "YOUREMAILHERE@SOMEHOST.COM"
$EmailTo = "WHOEVERISGOINGTORECEIVEEMAIL@SOMEHOST.COM"
$Subject = "SUBJECT"
$Body = "BODY"
$SMTPServer = "smtp.gmail.com"
$SMTPClient = New-Objecct Net.Mail.SmtpClient($SMTPServer, 587)
$SMTPClient.EnableSsl = $true
$SMTPClient.Credentials = New-Object System.Net.NetworkCredential("EmailYoureSendingFrom", "password");
$SMTPClient.Send($EmailFrom, $EmailTo, $Subject, $Body)