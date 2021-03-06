<h1>Virtual Network</h1>
<p>This section includes two parts: an ARM template which deploys a virtual network and another to deploy subnets.</p>

<h2>Virtual Network</h2>
<p>The VNetDeploy.json ARM template can be used to deploy a virtual network with a Bastion service (and related subnet)
    included. Feel free to consult the VNetDeploy.parameters.json file for parameter examples.</p>
<p><b>Note:</b> If you wish to use an existing virtual network, you may proceed to the Subnet section below.</p>
<ol>
    <li>As mencionned above, use the VNetDeploy.json file (ARM template) in the current folder.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName - The name of the project/solution. This string will be used to name the virtual network.
            </li>
            <li>environmentName - The environment of the virtual network. This string will be used to name the virtual
                network.</li>
            <li>addressPrefix - The adress prefix of the virtual network's address space. (IE: 10.10.10.0)</li>
            <li>subnetMask - The subnet mask of the virstual network. Format: /# (IE: /24)</li>
            <li>bastionAddressPrefix - Optional: The address prefix of the bastion subnet IF different from the virtual network's address prefix. IF NOT, the value must remain an empty string (default). (IE: 10.10.10.0)</li>
            <li>resourceTags - An array of tags to add to each resource created.</li>
        </ul>
    <li>The file will output the ID and name of the created virtual network.</li>
</ol>
<h3>Virtual Network Peering</h3>
<p>The VNetPeeringDeploy.json file can be used to peer two Azure virtual networks. Feel free to consult the VNetPerringDeploy.parameters.json file for parameter examples.</p> Please note you will need to deploy the template twice (each virtual network should be passed as source and destination through the parameters) in order to peer both vnets in both directions.
<p>Pass in the following parameters:</p>
<ul>
    <li>vnetSource - Name of the Vnet to be peered.</li>
    <li>vnetDest - Name of the Vnet to be peer source with.</li>
    <li>vnetDestRG - Name of resource group containing destination Vnet.</li>
    <li>vnetDestSubID - Subscription ID containg destination Vnet.</li>
    <li>allowVirtualNetworkAccess - Boolean: Allow virtual network access.</li>
    <li>allowForwardedTraffic - Boolean: Allow forwarded traffic.</li>
    <li>allowGatewayTransit - Boolean: Allow gateway transit.</li>
    <li>useRemoteGateways - Boolean: Use Remote Gateways.</li>
</ul>

<h2>Subnet</h2>
<p>Both the SubnetDeploy.json and Subnet&NSGDeploy.json ARM templates can be used to deploy a subnet within an existing
    virtual network. Feel free to consult the SubnetDeploy.parameters.json and Subnet&NSGDeploy files for parameter examples.</p>
<p><b>Note:</b>If you want to associate an existing network security group, please follow the SubnetDeploy.json section
    below. On the other hand, if you wish to create the network security group with your subnet, please follow the
    Subnet&NSGDeploy.json section.</p>
<h3>SubnetDeploy.json</h3>
<ol>
    <li>As mencionned above, you can use the SubnetDeploy.json file (ARM template) in the current folder when deploying
        a Subnet which you want to associate with an exisiting network security group.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName - The name of the project/solution. This string will be used to name the subnet.</li>
            <li>environmentName - The environment of the subnet. This string will be used to name the subnet.</li>
            <li>zoneName - The subnet's zone (capitalized acronym) according to ITSG22.</li>
            <li>subZoneName - Optional: Sub-zone in case one zone needs to be seperated. This should be a small string
                or a capitalized acronym with no spaces. For instance, if you need to have a application gateway in a
                different subnet in the same zone, then your subzone could be 'AG'.</li>
            <li>addressPrefix - The address prefix of the subnet's address space. (IE: 10.10.10.0)</li>
            <li>subnetMask - The subnet mask of the subnet. Format: /# (IE: /24)</li>
            <li>vnetName - The name of the vnet you wish to deploy the subnet to.</li>
            <li>nsgName - The name of an existing NSG for the subnet.</li>
        </ul>
    <li>The file will output the ID and name of the created subnet.</li>
</ol>
<h3>Subnet&NSGDeploy.json</h3>
<ol>
    <li>As mencionned above, use the Subnet&NSGDeploy.json file (ARM template) in the current folder when deploying a
        subnet and its netork security group.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName - The name of the project/solution. This string will be used to name the subnet.</li>
            <li>environmentName - The environment of the subnet. This string will be used to name the subnet.</li>
            <li>zoneName - The subnet's zone (capitalized acronym) according to ITSG22.</li>
            <li>subZoneName - Optional: Sub-zone in case one zone needs to be seperated. This should be a small string
                or a capitalized acronym with no spaces. For instance, if you need to have a application gateway in a
                different subnet in the same zone, then your subzone could be 'AG'.</li>
            <li>addressPrefix - The adress prefix of the subnet's address space. (IE: 10.10.10.0)</li>
            <li>subnetMask - The subnet mask of the subnet. Format: /# (IE: /24)</li>
            <li>vnetName - The name of the vnet you wish to deploy the subnet to.</li>
            <li>resourceTags - Tags to add to the network security group.</li>
        </ul>
    <li>The file will output the ID and name of the created subnet and network security group.</li>
    <li>In order to add security rules to the NSG, please refer to the Network Security Group section of the repository.</li>
</ol>