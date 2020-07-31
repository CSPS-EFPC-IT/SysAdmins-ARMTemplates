<h1>Resource Group</h1>
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
                and Retention. <b>Note:</b>The default value contains the required tags with no values.
                <table style="border: 1px solid black">
                    <tbody>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p><strong>Tag</strong></p>
                            </td>
                            <td style="border: 1px solid black">
                                <p><strong>Definition</strong></p>
                            </td>
                            <td style="border: 1px solid black">
                                <p><strong>Options / Examples</strong></p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Project</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Name of the project (or application).</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Ex: Testing Application</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Group</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Group to which the project belongs to.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Ex: SysAdmins</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Owner</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Owner of the project, also known as a point of contact.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Ex: John Doe</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Environment</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Establishes a resource&rsquo;s phase in its project development.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>SANDBOX, DEV, TEST, STAGING, PROD</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Classification</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Classification &ndash; Any information related to the national interest that
                                    could reasonably be expected to quality for an exemption under one of the
                                    provisions of the privacy act and/or the access to information act.</p>
                                <p>Protection &ndash; Refers to specific provisions of the access to information act
                                    and privacy act and applies to individuals, organizations and government.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Unclassified, ProtectedA, ProtectedB, ProtectedC, Confidential, Secret, TopSecret
                                </p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Audience</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Target audience of the solution.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Team, CSPS, Government, Public</p>
                                <p>Explanation: (Solution is for)</p>
                                <p>Team &ndash; a single team at CSPS.</p>
                                <p>CSPS &ndash; multiple teams at CSPS or for the entire CSPS department.</p>
                                <p>Government &ndash; one or more Government departments other than CSPS.</p>
                                <p>Public &ndash; the public.</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>User Impact Level</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Defines the criticality of the resource depending on how many users will be
                                    affected in case of resource failure.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>1000+users, 500-999users, 100-499users, 20-99users, 1-19users</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>High Availability</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Is the resource part of high availability solution.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>True, False</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Uptime Period</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>When is the resource/solution is up.</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>24/7, daytime, weekdays, work hours</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Backups</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>How often are backups are done. (In days)</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Ex: 7 (=weekly)</p>
                            </td>
                        </tr>
                        <tr style="border: 1px solid black">
                            <td style="border: 1px solid black">
                                <p>Retention</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>How long are the backups kept for. (In days)</p>
                            </td>
                            <td style="border: 1px solid black">
                                <p>Ex: 1</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </li>
        </ul>
    <li>The file will output the ID and name of the created resource group.</li>
</ol>