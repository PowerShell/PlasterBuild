@{
    # Script module or binary module file associated with this manifest.
    RootModule = 'PlasterBuild.psm1'

    # ID used to uniquely identify this module
    GUID = '47439453-9009-4d0f-bf97-2be7fed33a1a'

    # Version number of this module.
    ModuleVersion = '0.1.0'

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a
    # PSData hashtable with additional module metadata used by PowerShell.
    PrivateData = @{
        PSData = @{
            # Tags applied to this module. These help with module discovery in online galleries.
            Tags = @('PlasterBuild', 'build', 'psake', 'sign', 'publish')

            # A URL to the license for this module.
            LicenseUri = 'https://github.com/PowerShell/PlasterBuild/blob/master/LICENSE'

            # A URL to the main website for this project.
            ProjectUri = 'https://github.com/PowerShell/PlasterBuild'

            # A URL to an icon representing this module.
            #IconUri = 'https://github.com/PowerShell/PlasterBuild/icon.png'

            # ReleaseNotes of this module - our ReleaseNotes are in
            # the file ReleaseNotes.md
            # ReleaseNotes = ''
        }
    }

    # Author of this module
    Author = 'Microsoft Corporation'

    # Company or vendor of this module
    CompanyName = 'Microsoft Corporation'

    # Copyright statement for this module
    Copyright = '(c) Microsoft Corporation 2016. All rights reserved.'

    # Description of the functionality provided by this module
    Description = 'PlasterBuild provides build-related commmands and canned build scripts for PowerShell modules.'

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion = '3.0'

    # Functions to export from this module - explicitly list each function that should be
    # exported.  This improves performance of PowerShell when discovering the commands in
    # module.
    FunctionsToExport = @(
        )

    # HelpInfo URI of this module
    # HelpInfoURI = ''
}
