﻿#install Rubrik Module
Install-Module Rubrik
import-module Rubrik

# set parameters
$RubrikCluster="emea1-rbk01.rubrikdemo.com"
#path Mac book machine
$Credxmlpath = "/Users/hbuter/rubrik.cred"

$CredXML = Import-Clixml $Credxmlpath

# connect to cluster
Connect-Rubrik -Server $RubrikCluster -Credential $CredXML
