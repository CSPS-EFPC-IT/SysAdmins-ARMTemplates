<h1>Recovery Services Vault</h1>
<p>There are multiples steps in order to enable Azure Backup for different resources.</p>
<p>The overal steps can be summarized as so:</p>
<ol>
  <li>Create an Azure Recovery Services Vault for the solution you wish to backup.</li>
  <li>Create one or more Backup Policies in the created vault which will define your backup settings.</li>
  <li>Associate resources to backup with their appropriate Backup Policiy(ies) to enable backups.</li>
 </ol>
<h2> Recovery Vault </h2>
<p>As mencionned above, the first step will be the creation the Azure Recovery Services Vault.<p>
<p><b>Note:</b> If you wish to use an existing vault, you may proceed to the Backup Policies section below.</p>
<ol>
  <li>
 </ol>
<h2> Backup Policies </h2>
<p>Once a Azure Recovery Services Vault is created, you will need to add Backup Policies to define different backup settings.<p>
  <p>It is important to note that their are default backup policies but it is recommended to create your own customized ones. <b>Note:</b> You may proceed to the next section if existing Backup Polocies within the vault are already configured to meet your requirements.<p>
    <p>The creation of policies through ARM templates vary in configurations, which is why the policies will be created differently depending on the resource you wish to backup.<p>
      <p> Here you will need to go to the appropriate folder depending on resource you want to backup:<p>
        <h3>Azure File Share</h3>
        <p> Go to the https://github.com/CSPS-EFPC-IT/SysAdmins-ARMTemplates/tree/Recovery-Services-Vault-1/Recovery%20Services%20Vault/Azure%20File%20Share%20Backup folder where you will find the appropriate files to backup Azure Storage File Shares.</p>
        <h3>Virtual Machine</h3>
        <p> Go to the https://github.com/CSPS-EFPC-IT/SysAdmins-ARMTemplates/tree/Recovery-Services-Vault-1/Recovery%20Services%20Vault/VM%20Backup folder where you will find the appropriate files to backup Azure Virtual Machines.</p>
        <h3>Virtual Machine</h3>
        <p>TBD</p>
        
<h2> Backups Enabling </h2>
