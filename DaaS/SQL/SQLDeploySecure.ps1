$resourceGroupName=$args[0]
$serverName=$args[1]

az sql server update --name $serverName --resource-group $resourceGroupName --enable-public-network false