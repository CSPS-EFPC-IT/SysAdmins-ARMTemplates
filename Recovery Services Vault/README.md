<h1>Recovery Services Vault</h1>
<p>There are multiples steps in order to enable Azure Backup for different resources.</p>
<p>The overal steps can be summarized as so:</p>
<ol>
  <li>Create an Azure Recovery Services Vault for the solution you wish to backup.</li>
  <li>Create one or more Backup Policies in the created vault which will define your backup settings.</li>
  <li>Associate resources to backup with their appropriate Backup Policiy(ies) to enable backups.</li>
</ol>
<p><b>Note:</b> Each ARM template will be accompanied with a parameters.json file with a similar name as the asscoiated
  ARM template. Feel free to use them as parameter examples.</p>
<h2>Recovery Vault </h2>
<p>As mencionned above, the first step will be the creation the Azure Recovery Services Vault.</p>
<p><b>Note:</b> If you wish to use an existing vault, you may proceed to the Backup Policies section below.</p>
<ol>
  <li>Use the VaultDeploy.json file (ARM template) in the current folder.</li>
  <li>Pass in the following parameters:
    <ul>
      <li>projectName - The name of the project/solution of the items you wish to backup using this vault.</li>
      <li>environmentName - The environment The environment of the resources to backup. This string will be used to name
        all resources required.</li>
      <li>resourceTags - An array of tags to add to each resource created.</li>
    </ul>
  <li>The file will output the ID and name of the created vault.</li>
</ol>
<h2>Backup Policies</h2>
<p>Once a Azure Recovery Services Vault is created, you will need to add Backup Policies to define different backup
  settings.</p>
<p>It is important to note that their are default backup policies but it is recommended to create your own customized
  ones. <b>Note:</b> You may proceed to the next section if existing Backup Polocies within the vault are already
  configured to meet your requirements.</p>
<p>The creation of policies through ARM templates vary in configurations, which is why the policies will be created
  differently depending on the resource you wish to backup:</p>
<h3>Virtual Machine</h3>
<ol>
  <li>
    <p>Go to the
      <a
        href=https://github.com/CSPS-EFPC-IT/SysAdmins-ARMTemplates/tree/Recovery-Services-Vault-1/Recovery%20Services%20Vault/VM%20Backup>VM
        Backup</a> folder where you will find the appropriate files to backup Azure Virtual Machines.</p>
  </li>
  <li>Use the VMDailyPolicyDeploy.json file (ARM template) for a daily backups policy. Otherwise, you may use the
    VMWeeklyPolicyDeploy.json file (ARM template) for a weekly backups policy. Another option is to use the
    VMMonthlyPolicyDeploy.son file (ARM template) to deploy a policy which configures daily, weekly, and monthly backups
    altogether.</li>
  <li>Pass in the following parameters:
    <ul>
      <li>vaultName - The name of the recovery services vault which you wish the create the backup policy in. This value
        can be found as so:
        <ul>
          <li>You can use the output of the ARM
            template used to create the vault</li>
          <li>Pass in the vault name knowing that the format will be as so:
            [projectName][-environmentNameUnlessProd (-DEV/-STAGING/)]-RecoveryVault (ex: Testing-DEV-RecoveryVault,
            Testing-RecoveryVault)</li>
          <li>Find the value in Azure (ex: Using the Azure Portal)</li>
        </ul>
      </li>
      <li>dailyBackupsRetention (daily/monthly backup policies only) - Number of days (7-9999) to retain daily backups.
      </li>
      <li>weeklyBackupsRetention (weekly/monthly backup policies only) - Number of weeks (1-5163) to retain weekly
        backups.</li>
      <li>monthlyBackupsRetention - Number of months (1-1188) to retain monthly backups.</li>
      <li>instantRpRetentionRangeInDays - Number of days (1-5) to keep instant recovery snapshots.</li>
      <li>daysOfTheWeek (monthly backup policy only) - Day of the week when the backup should be retained. (Monday,
        Tuesday, Wednesday, Thursday, Friday, Saturday or Sunday)</li>
      <li>weeksOfTheMonth (monthly backup policy only) - Week of the month when the backup should be retained. (First,
        Second, Third, Fourth or Last)</li>
      <li>backupTime - Time of daily backups (hh:mm).</li>
    </ul>
  </li>
  <li>The file will output the ID and name of the created policy.</li>
</ol>
<h3>Azure File Share</h3>
<ol>
  <li>
    <p>Go to the <a
        href="https://github.com/CSPS-EFPC-IT/SysAdmins-ARMTemplates/tree/Recovery-Services-Vault-1/Recovery%20Services%20Vault/Azure%20File%20Share%20Backup">File
        Share Backup</a> folder where you will find the appropriate files to backup Azure Storage File Shares.</p>
  </li>
  <li>Use the FileSharePolicyDeploy.json file (ARM template) for a daily backups policy.</li>
  <li>Pass in the following parameters:
    <ul>
      <li>vaultName - The name of the recovery services vault which you wish the create the backup policy in. This value
        can be found as so:
        <ul>
          <li>You can use the output of the ARM
            template used to create the vault</li>
          <li>Pass in the vault name knowing that the format will be as so:
            [projectName][-environmentNameUnlessProd (-DEV/-STAGING/)]-RecoveryVault (ex: Testing-DEV-RecoveryVault,
            Testing-RecoveryVault)</li>
          <li>Find the value in Azure (ex: Using the Azure Portal)</li>
        </ul>
      </li>
      <li>dailyBackupsRetention - Number of days (1-200) to retain daily backups.</li>
      <li>backupTime - Time of daily backups (hh:mm).</li>
    </ul>
  </li>
  <li>The file will output the ID and name of the created policy.</li>
</ol>
<h3>SQL Server on a Virtual Machine</h3>
<p>TBD</p>

<h2>Backups Enabling</h2>
<p>Finally, you will need to create Protected Items which are basically links between the resources to backup and their
  Backup Polocies.</p>
<p>The creation of these links through ARM templates vary in configurations, which is why the Protected Items will be
  created
  differently depending on the resource you wish to backup:</p>
<h3>Virtual Machine</h3>
<ol>
  <li>
    <p>Go to the
      <a
        href=https://github.com/CSPS-EFPC-IT/SysAdmins-ARMTemplates/tree/Recovery-Services-Vault-1/Recovery%20Services%20Vault/VM%20Backup>VM
        Backup</a> folder where you will find the appropriate files to backup Azure Virtual Machines.</p>
  </li>
  <li>Use the VMBackupDeploy.json file (ARM template) to enable backups for a VM.</li>
  <li>Pass in the following parameters:
    <ul>
      <li>vaultName - The name of the recovery services vault which you wish use to backup target resource. This value
        can be found as so:
        <ul>
          <li>You can use the output of the ARM
            template used to create the vault</li>
          <li>Pass in the vault name knowing that the format will be as so:
            [projectName][-environmentNameUnlessProd (-DEV/-STAGING/)]-RecoveryVault (ex: Testing-DEV-RecoveryVault,
            Testing-RecoveryVault)</li>
          <li>Find the value in Azure (ex: Using the Azure Portal)</li>
        </ul>
      </li>
      <li>policyName - The name of the policy you want to use to enable backups. This value can be found as so:
        <ul>
          <li>You can use the output of the ARM
            template used to create the policy</li>
          <li>Pass in the policy name knowing that the format will be as so (unless you plan to use the default
            policies):
            [frequency(Daily/Weekly)][backupsTime(HHhMM)]For[backupsRetention(# of
            days/weeks)][retentionTimeUnit(Days/Weeks)]-VMPolicy (ex: "Daily00h00For90Days-VMPolicy")</li>
          <li>Find the value in Azure (ex: Using the Azure Portal)</li>
        </ul>
      </li>
      <li>vmName - The name of the Virtual Machine to backup.</li>
      <li>vmRGName - The name of the Resource Group which contains the Virtual Machine to backup.</li>
      <li>vmSubID - The subscription ID which contains the Virtual Machine to backup.</li>
    </ul>
  </li>
</ol>
<h3>Azure File Share</h3>
<p>At this point, it is impossible to deploy backups of File Shares using ARM templates.</p>
<!--<ol>
  <li>
    <p>Go to the <a
        href="https://github.com/CSPS-EFPC-IT/SysAdmins-ARMTemplates/tree/Recovery-Services-Vault-1/Recovery%20Services%20Vault/Azure%20File%20Share%20Backup">File
        Share Backup</a> folder where you will find the appropriate files to backup Azure Storage File Shares.</p>
  </li>
</ol>-->
<h3>SQL Server on a Virtual Machine</h3>
<p>TBD</p>