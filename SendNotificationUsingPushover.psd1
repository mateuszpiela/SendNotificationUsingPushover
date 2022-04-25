﻿#
# Module manifest for module 'SendNotificationUsingPushover'
#
# Generated by: Mateusz Pieła
#
# Generated on: 25.04.2022
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'SendNotificationUsingPushover.psm1'

# Version number of this module.
ModuleVersion = '0.0.1'

# Supported PSEditions
# CompatiblePSEditions = @()

# ID used to uniquely identify this module
GUID = '6daab856-2ac6-4566-ba52-5349a87a38ce'

# Author of this module
Author = 'Mateusz Pieła'

# Company or vendor of this module
CompanyName = ''

# Copyright statement for this module
Copyright = '(c) 2022 Mateusz Pieła. on MIT License.'

# Description of the functionality provided by this module
Description = 'This module add sending push notifications using PushOver (This module for PowerShell is not endorsed/affiliated by/with PushOver.NET)'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '5.1'

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# DotNetFrameworkVersion = ''

# Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
# CLRVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
FunctionsToExport = 'Send-NotificationUsingPushover'

# Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
CmdletsToExport = @()

# Variables to export from this module
VariablesToExport = '*'

# Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
AliasesToExport = @()

# DSC resources to export from this module
# DscResourcesToExport = @()

# List of all modules packaged with this module
# ModuleList = @()

# List of all files packaged with this module
# FileList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
PrivateData = @{

    PSData = @{

        # Tags applied to this module. These help with module discovery in online galleries.
        Tags = "Notifications"

        # A URL to the license for this module.
        LicenseUri = 'https://raw.githubusercontent.com/mateuszpiela/SendNotificationUsingPushover/main/LICENSE'

        # A URL to the main website for this project.
        ProjectUri = 'https://github.com/mateuszpiela/SendNotificationUsingPushover'

        # A URL to an icon representing this module.
        IconUri = 'https://user-images.githubusercontent.com/20213336/165135567-e7960169-8455-4e9d-83bd-0834751092a6.png'

        # ReleaseNotes of this module
        ReleaseNotes = 'https://github.com/mateuszpiela/SendNotificationUsingPushover/releases'

    } # End of PSData hashtable

} # End of PrivateData hashtable

# HelpInfo URI of this module
# HelpInfoURI = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}

