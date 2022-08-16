# Function for easily querying the Azure Instance Metadata Service

Function AzMeta {
    Param( [Parameter(ValueFromPipeline)] $p ) 
    
    Invoke-RestMethod `
        –Headers @{"Metadata"="true"} `
        –URI "http://169.254.169.254/metadata/instance/$($p)?api-version=2017-08-01&format=text"
}

# Get the public IP if your Azure instance
"/data01/metadata" | AzMeta

# Get the Virtual Machine Size/SKU, e.g. "Standard_B2s"
"compute/vmSize" | AzMeta