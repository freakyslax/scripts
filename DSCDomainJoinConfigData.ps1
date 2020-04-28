$ConfigData = @{
    AllNodes = @(
        @{
            NodeName = "*"
            PSDscAllowPlainTextPassword = $True
            PSDscAllowDomainUser = $true
           
        }
    )
}
