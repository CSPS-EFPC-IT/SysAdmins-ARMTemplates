$resourceGroupName=$args[1]
$serverName=$args[0]

az sql server update --admin-password myadminpassword --name $serverName --resource-group $resourceGroupName --enable-public-network false