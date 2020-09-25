$IndexJs = Get-ChildItem "$PSScriptRoot\index.*.bundle.js"
$AssetId = [UniversalDashboard.Services.AssetService]::Instance.RegisterAsset($IndexJs.FullName)

function New-UD95TextField {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Value,
        [Parameter()]
        [string]$Placeholder,
        [Parameter()]
        [switch]$FullWidth
    )

    @{
        assetId = $AssetId 
        isPlugin = $true 
        type = "ud95textfield"
        id = $Id

        value = $Value
        placeholder = $Placeholder 
        fullWidth = $FullWidth.IsPresent
    }
}

function New-UD95Button {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Text,
        [Parameter()]
        [Endpoint]$OnClick
    )

    $OnClick.Register($Id, $PSCmdlet)

    @{
        assetId = $AssetId 
        isPlugin = $true 
        type = "ud95button"
        id = $Id

        text = $Text
        onClick = $OnClick
    }
}

function New-UD95List {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [ScriptBlock]$Content
    )

    @{
        assetId = $AssetId 
        isPlugin = $true 
        type = "ud95list"
        id = $Id

        children = & $Content
    }
}

function New-UD95ListItem {
    param(
        [Parameter()]
        [string]$Id = (New-Guid).ToString(),
        [Parameter()]
        [string]$Text
    )

    @{
        assetId = $AssetId 
        isPlugin = $true 
        type = "ud95listitem"
        id = $Id

        text = $Text
    }
}