param(
    [Parameter(Mandatory = $true, valueFromPipeline = $true)][String] $desired_file,
    [Parameter(Mandatory = $true, valueFromPipeline = $true)][String] $command,
    [Parameter(Mandatory = $false, valueFromPipeline = $true)][String] $match = ".*"
)


if((!$PSBoundParameters.ContainsKey("desired_file")) -or (!$PSBoundParameters.ContainsKey("command"))) {
    throw "You must pass a desired_file and a command!"
}


foreach($line in Get-Content $desired_file) {
    if($line -match $match) {
        Invoke-Expression "$command '$line'"
    }
}