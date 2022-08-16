"/data01/metadata" | Tee-Object –Variable p | Out-Null ; Invoke-RestMethod –Headers @{"Metadata"="true"} –URI "http://169.254.169.254/metadata/instance/$($p)?api-version=2017-08-01&format=text"
