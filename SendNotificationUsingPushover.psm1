function Send-NotificationUsingPushover {
<#
  .Synopsis
    Send push notification using pushover service
  .Description
    Send push notification using pushover service
  .Parameter Token
    Your Application API Token
  .Parameter User
    Your user/group key
  .Parameter Message
    Your message to send
  .Parameter Device
    The name of one of your devices to send just to that device instead of all devices
  .Parameter Html
    Set to 1 to enable HTML parsing
  .Parameter Priority
    A value of -2, -1, 0 (default), 1, or 2
  .Parameter Sound
    The name of a supported sound to override your default sound choice
  .Parameter Timestamp
    A Unix timestamp of a time to display instead of when our API received it
  .Parameter Title
    Your message's title, otherwise your app's name is used
  .Parameter Url
    A your message's title, otherwise your app's name is used
  .Parameter Urltitle
    A title for the URL specified as the url parameter, otherwise just the URL is shown
  .Example
    #Send only with required api parameters
    Send-NotificationUsingPushover -Token your_app_token -User your_user_token_or_distribution_group_key -Message your_message
#>
param (
  [Parameter(Mandatory=$true)]
  [string]
  $Token,
  [string]
  $User,
  [Parameter(Mandatory=$true)]
  [string]
  $Message,
  [Parameter(Mandatory=$false)]
  [string]
  $Device,
  [Parameter(Mandatory=$false)]
  [bool]
  $Html = 0,
  [Parameter(Mandatory=$false)]
  [int]
  $Priority = -2,
  [Parameter(Mandatory=$false)]
  [string]
  $Sound,
  [Parameter(Mandatory=$false)]
  [long]
  $Timestamp,
  [Parameter(Mandatory=$false)]
  [string]
  $Title,
  [Parameter(Mandatory=$false)]
  [string]
  $Url,
  [Parameter(Mandatory=$false)]
  [string]
  $Urltitle
)

$json = @{
  "token" = $Token
  "user" = $User
  "message" = $Message
  "device" = $Device
  "html" = $Html
  "priority" = $Priority
  "sound" = $Sound
  "timestamp" = $Timestamp
  "title" = $Title
  "url" = $Url
  "url_title" = $Urltitle
}

$header = @{
   'Content-type' = 'application/json; charset=utf-8'
   'Accept' = 'application/json'
}

$json = ConvertTo-Json -InputObject $json

$webRequest = Invoke-RestMethod -Uri https://api.pushover.net/1/messages.json -Method Post -Body $json -Headers $header
if($webRequest.status -eq 1) {
   return $true
} 

return $false
}
Export-ModuleMember -Function Send-NotificationUsingPushover