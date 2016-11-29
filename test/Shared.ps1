$ModuleManifestName  = 'PlasterBuild.psd1'
$ModuleManifestPath  = "$PSScriptRoot\..\src\$ModuleManifestName"

if (!$SuppressImportModule) {
    # -Scope Global is needed when running tests from inside of psake, otherwise
    # the module's functions cannot be found in the Plaster\ namespace
    Import-Module $ModuleManifestPath -Scope Global
}
