data LocalizedData {
    # culture="en-US"
    ConvertFrom-StringData @'
'@
}

Microsoft.PowerShell.Utility\Import-LocalizedData LocalizedData -FileName Plaster.Resources.psd1 -ErrorAction SilentlyContinue

# Module variables

if (($PSVersionTable.PSVersion.Major -le 5) -or ($PSVersionTable.PSEdition -eq 'Desktop') -or $IsWindows) {
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseDeclaredVarsMoreThanAssigments', '')]
    $ParameterDefaultValueStoreRootPath = "$env:LOCALAPPDATA\PlasterBuild"
}
elseif ($IsLinux) {
    # https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseDeclaredVarsMoreThanAssigments', '')]
    $ParameterDefaultValueStoreRootPath = if ($XDG_DATA_HOME) { "$XDG_DATA_HOME/plasterbuild"  } else { "$Home/.local/share/plasterbuild" }
}
else {
    [System.Diagnostics.CodeAnalysis.SuppressMessage('PSUseDeclaredVarsMoreThanAssigments', '')]
    $ParameterDefaultValueStoreRootPath = "$Home/.plasterbuild"
}

# Dot source the individual module command scripts.
. $PSScriptRoot\SettingCommands.ps1

Export-ModuleMember -Function *-*
