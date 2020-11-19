<h1>Virtual Machine</h1>
<p>This section includes two parts: an ARM template which deploys a Windows server virtual machine and the other which deploys a Linux virtual machine.</p>

<h2>Windows Server Virtual Machine</h2>
<p>TBD</p>

<h2>Ubuntu 18.04 LTS Virtual Machine</h2>
<p>The VMUbuntu1804LTSDeploy.json ARM template in the Linux folder can be used to deploy a virtual machine with a NIC, PublicIP and Diagnostics Storage Account. Feel free to consult the VMUbuntu1804LTSDeploy.parameters.json file for parameter examples.</p>
<ol>
    <li>As mentioned above, use the VMUbuntu1804LTSDeploys.json file (ARM template) in the current folder.</li>
    <li>Pass in the following parameters:
        <ul>
            <li>projectName: The name of the project. This string will be used to name the virtual machine and associated resources.</li>
            <li>environmentName: The environment of the whole solution.</li>
            <li>vmPurpose: The purpose of the virtual machine. ex: App (application), Data (database)</li>
            <li>vmNumber: The number of the virtual machine. This number will be used to name the virtual machine. (ex: 01)</li>
            <li>vmSize: The size of the VM. Please see a <a href="https://docs.microsoft.com/en-us/azure/templates/microsoft.compute/virtualmachines#HardwareProfile">list of available values</a>.</li>
            <li>adminUsername: The username of the default admin account.</li>
            <li>adminPassword: The password of the default admin account.</li>
            <li>publicIpAddressType: The type of the public ip. ex: static or dynamic</li>
            <li>publicIpAddressSku: The SKU of the public ip. ex: basic or standard</li>
            <li>diagnosticsStorageAccountName: The name the storage account for diagnostics. (24 character max, format: [ShortProjectName][env]"diagsa")</li>
            <li>vnetName: The name of the virtual network. </li>
            <li>subnetName: The name of the pre-created subnet. ex: example-SN </li>
        </ul>
    <li>The file will output the ID and the name of the following resources: VM, NIC, PublicIP and Diagnostics Storage Account.</li>
</ol>

<p><b>Note:</b>The certificate implementation is not included yet.</p>