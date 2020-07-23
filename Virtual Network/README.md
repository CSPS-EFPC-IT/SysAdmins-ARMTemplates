<h1>Virtual Network</h1>
<p>This section includes two parts: an ARM template which deploys a virtual network and another to deploy subnets.</p>

<h2>Virtual Network</h2>
<p>The VNetDeploy.json ARM template can be used to deploy a virtual network with a Bastion service (and related subnet)
    included. Feel free to use the VNetDeploy.parameters.json as parameter examples.</p>
<p><b>Note:</b> If you wish to use an existing virtual network, you may proceed to the Subnet section below.</p>
<ol>
    <li>As mencionned above, use the VNetDeploy.json file (ARM template) in the current folder.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName - The name of the project/solution. This string will be used to name the virtual network.</li>
            <li>environmentName - The environment of the virtual network. This string will be used to name the virtual network.</li>
            <li>addressPrefix - The adress prefix of the virtual network's address space. (IE: 10.10.10.0)</li>
            <li>subnetMask - The subnet mask of the virstual network. Format: /# (IE: /24)</li>
            <li>resourceTags - An array of tags to add to each resource created.</li>
        </ul>
    <li>The file will output the ID and name of the created virtual network.</li>
</ol>

<h2>Subnet</h2>
<p>The SubnetDeploy.json ARM template can be used to deploy a subnet within an existing virtual network. Feel free to use the SubnetDeploy.parameters.json as parameter examples.</p>
<ol>
    <li>As mencionned above, use the SubnetDeploy.json file (ARM template) in the current folder.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName - The name of the project/solution. This string will be used to name the subnet.</li>
            <li>environmentName - The environment of the subnet. This string will be used to name the subnet.</li>
            <li>zoneName - The subnet's zone (capitalized acronym) according to ITSG22.</li>
            <li>addressPrefix - The adress prefix of the subnet's address space. (IE: 10.10.10.0)</li>
            <li>subnetMask - The subnet mask of the subnet. Format: /# (IE: /24)</li>
            <li>vnetName - The name of the vnet you wish to deploy the subnet to.</li>
        </ul>
    <li>The file will output the ID and name of the created subnet.</li>
</ol>