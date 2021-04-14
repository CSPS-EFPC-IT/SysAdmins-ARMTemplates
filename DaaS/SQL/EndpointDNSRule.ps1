#set variables
$resourceGroup = $args[0]
$sqlServerName = $args[1]
$dnsZone = $args[2]
$nicQuery = $sqlServerName + "-PrivateEndpoint*"

#get nics in target resource group (in json format)
$nicsJsonSegments = az network nic list --resource-group $resourceGroup

#convert json to objects
$nicsJson = ""
foreach($segment in $nicsJsonSegments){
    $nicsJson += $segment
}
$nicsJson = $nicsJson.Replace(" ", "")
$nics = ConvertFrom-Json -InputObject $nicsJson

#loop through nics
foreach($nic in $nics){
    #find nic attached to private endoint of target SQL Server
    if($nic.name.ToString().toUpper() -like $nicQuery.toUpper()){
        #add private dns zone record
        az network private-dns record-set a add-record -g $resourceGroup -z $dnsZone -n $sqlServerName.toLower() -a $nic.ipConfigurations.privateIpAddress
    }
}