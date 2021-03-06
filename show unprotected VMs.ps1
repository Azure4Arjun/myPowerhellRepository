﻿#install & Import Rubrik Module
    Install-Module Rubrik
    Import-Module Rubrik

# set parameters
$RubrikCluster="emea1-rbk01.rubrikdemo.com"
$Credxmlpath = "/Users/hbuter/rubrik.cred"
$CredXML = Import-Clixml $Credxmlpath
#$OutPath = "C:\Users\harold.buter\Documents\output.csv"

# connect to cluster
Connect-Rubrik -Server $RubrikCluster -Credential $CredXML

# show unprotected virtual machines
$RubrikVMs=Get-RubrikVM
$UnprotectedVMs=$RubrikVMs | Where-Object{$_.effectiveSlaDomainName -eq "Unprotected"}
# write output into CSV file
$UnprotectedVMs | Sort-Object Name | Select Name,ID | Export-Csv -Path "/Users/hbuter/Rubrik-unprotected-output.csv" -NoTypeInformation
#Show ouput on screen
$UnprotectedVMs | Sort-Object Name | Select Name,ID
