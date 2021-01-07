<h1>Database as a Service</h1>
<p>This section includes arm templates for DaaS resources.</p>

<h2>SQL Database</h2>
<p>The SQLDeploy.json ARM template in the SQL folder can be used to deploy a SQL server and database. Feel free to
    consult the SQLDeploy.parameters.json file for parameter examples.</p>
<ol>
    <li>As mentioned above, use the SQLDeploy.json file (ARM template) in the current folder.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName: The name of the project. This string will be used to name the resources.</li>
            <li>projectShortName: The name of the project but shortened for naming restrictions. This string will be
                used to name some resources.</li>
            <li>environmentName: The environment of the whole solution.</li>
            <li>administratorLogin: The database administrator's username.</li>
            <li>administratorLoginPassword: The database administrator's password.</li>
            <li>dbTier: The database's pricing tier.</li>
            <li>dbSkuName: The database's SKU.</li>
            <li>dbMaxSize: The size of the database (Bytes).</li>
            <li>sqlServerSASub: Subscription ID containing the storage account.</li>
            <li>endpointVnetRG: The resource group of the virtual network which will contain the private endpoint.</li>
            <li>endpointVnetName: The virtual network which will contain the private endpoint.</li>
            <li>endpointSubnetName: The subnet in the virtual network which will contain the private endpoint.</li>
            <li>dbSARetention: Retention period (days) for SQL Server storage account.</li>
            <li>sqlServerLAWSRetention: Retention of Log Analytics Workspace Data (Days).</li>
            <li>sqlServerSARetention: Retention period (days) for SQL Server storage account.</li>
            <li>sqlServerEnableVA: If vulnarability assessments should be done on the SQL Server.</li>
            <li>sqlServerUseVAManagedIdentity: If vulnarability assessments should be done on the SQL Server using a
                managed identity.</li>
            <li>sqlEnableADS: If Azure Defender should be enabled on the SQL server.</li>
            <li>adminGroup: The name of the AD group who will administer resources.</li>
            <li>adminGroupID: The ID of the AD group who will administer resources.</li>
        </ul>
    <li>The file will output the ID and the name of the following resources: SQL Server, SQL database, storage account,
        private endpint, and log analytics workspace.</li>
</ol>

<p><b>Note:</b> Other DaaS resources will be added in the future.</p>