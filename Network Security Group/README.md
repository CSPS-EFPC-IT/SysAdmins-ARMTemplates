<h1>Network Security Group</h1>
<p>This section includes two parts: an ARM template which deploys a virtual network and another to deploy subnets.</p>

<h2>Network Security Group</h2>
<p>The NSGDeploy.json ARM template can be used to deploy a network security group.</p>
<p><b>Note:</b> If you wish to use an network security group, you may proceed to the Network Security Rule section
    below.</p>
<ol>
    <li>As mencionned above, use the NSGDeploy.json file (ARM template) in the current folder.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName - The name of the project/solution. This string will be used to name the network security
                group.
            </li>
            <li>environmentName - The environment of the network security group's virtual network. This string will be
                used to name network security group.</li>
            <li>zoneName - The NSG's zone (capitalized acronym) according to ITSG22.</li>
            <li>subZoneName - Optional: Sub-zone in case one zone needs to be seperated. This should be a small string
                or a capitalized acronym with no spaces. For instance, if you need to have a application gateway in a
                different subnet in the same zone, then your subzone could be 'AG'.</li>
            <li>resourceTags - An array of tags to add to each resource created.</li>
        </ul>
    <li>The file will output the ID and name of the created network security group.</li>
</ol>

<h2>Network Security Rule</h2>
<p>The NSGRuleDeploy.json ARM template can be used to deploy a network security rule within an existing network security
    group. Feel free to use the NSGRuleDeploy.parameters.json as parameter examples.</p>
<ol>
    <li>As mencionned above, use the NSGRuleDeploy.json file (ARM template) in the current folder.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>rulePriority - Priority of the security rule. Must be an integer between 100-4095.</li>
            <li>ruleDescription - Summary of the security rule (Max. 140 characters).</li>
            <li>sourceIP - The CIDR or source IP range. Asterisk '*' can also be used to match all source IPs. Default
                tags such as 'VirtualNetwork', 'AzureLoadBalancer' and 'Internet' can also be used.</li>
            <li>sourceName - Friendly source name with no spaces.</li>
            <li>destinationPort - Rule's destination port. Asterisk '*' can also be used to match all ports.</li>
            <li>accessAction - Rule's action: Allow or Deny.</li>
            <li>nsgName - The network security group where the rule is to be created.</li>
        </ul>
</ol>