﻿ Configuration DomainJoinConfiguration
{   
    Import-DscResource -ModuleName 'xDSCDomainjoin'   
    $secdomainpasswd = ConvertTo-SecureString "u3n07SK0%anU" -AsPlainText -Force
    $mydomaincreds = New-Object System.Management.Automation.PSCredential("adjoin@hq.standardoptical.net", $secdomainpasswd)
        
    node 'localhost'
    {
        xDSCDomainjoin JoinDomain
        {
            Domain = 'hq.standardoptical.net'
            Credential = $mydomaincreds
            JoinOU = "OU=RDS Servers,OU=Azure,OU=Servers,DC=hq,DC=standardoptical,DC=net"
        }
    }
}
