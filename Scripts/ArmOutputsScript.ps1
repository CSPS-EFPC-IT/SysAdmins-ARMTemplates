#Parameter - armOutputString
param (
    [Parameter(Mandatory=$true)]
    [string]
    $armOutputString
)

#Convert string into objects
$armOutputObj =  $armOutputString | convertfrom-json

    #Loops through objects to create variables
	$armOutputObj.PSObject.Properties | ForEach-Object {
		$type = ($_.value.type).ToLower()
		$key = $_.name
		$value = $_.value.value

		if ($type -eq "securestring") {
			Write-Host "##vso[task.setvariable variable=$key;issecret=true]$value"
		} elseif ($type -eq "string") {
			Write-Host "##vso[task.setvariable variable=$key]$value"
		}
	}
