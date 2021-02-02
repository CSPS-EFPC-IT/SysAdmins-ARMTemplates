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
		$outPut = "Secure variable '" + $key + "' was created."
		Write-Host $outPut
	} elseif ($type -eq "string") {
		Write-Host "##vso[task.setvariable variable=$key]$value"
		$outPut = "Variable '" + $key + "' was created with the following value: '" + $value + "'"
		Write-Host $outPut
	} else {
		$outPut = "Unable to create variable '" + $key + "' as variables of type " + $type + " are not supported by this script."
		Write-Host $outPut
	}
}
