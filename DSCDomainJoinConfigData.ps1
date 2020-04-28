$ConfigData = @{
    AllNodes = @(
        @{
            NodeName = "*"
            PSDscAllowPlainTextPassword = $True
            PSDscAllowDomainUser = $true
           
        }
        @{
            NodeName = "DomainJoined"
        }
    )
}
