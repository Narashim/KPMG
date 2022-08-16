Methord 1:-
-----------
$respraw=Invoke-WebRequest -Headers @{"Metadata"="true"} -Method GET -Proxy $Null -Uri "http://169.254.169.254/metadata/instance?api-version=2021-01-01"
$respraw
$respraw.Content
$respraw.Content | ConvertFrom-Json | ConvertTo-Json -Depth 6

Methord 2:-
-----------
#A better way that automatically creates us a nice PowerShell object with the response

$resp=Invoke-RestMethod -Headers @{"Metadata"="true"} -Method GET -Proxy $Null -Uri "http://169.254.169.254/metadata/instance?api-version=2021-01-01"
$respJSON = $resp | ConvertTo-Json -Depth 6