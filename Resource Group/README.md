<h1>Resource Group/h1>
    <p>This section includes the ARM template to deploy a new resource group.</p>
    <p>The RGDeploy.json ARM template can be used to deploy a resource group.</p>
    <ol>
        <li>As mencionned above, use the RGDeploy.json file (ARM template) in the current folder.</li>
        <li>Pass in the following parameters:
            <ul>
                <li>projectName - The name of the project. This string will be used to name the resource group.</li>
                <li>environmentName - The environment of the resource group. This string will be used to name the
                    virtual network.</li>
                <li>resourceTags - Tags to add to the resource group. The required tags are: Project, Group, Owner,
                    Environment, Classfication, Audience, User Impact Level, High Availability, Uptime Period, Backups,
                    and Retention.<b>Note:</b>The default value contains the required tags with no values.</li>
            </ul>
        <li>The file will output the ID and name of the created resource group.</li>
    </ol>