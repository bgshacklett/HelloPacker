<powershell>
# Force all network connections to be private
Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private


# Enable WinRM
$WinRMBasicSettings =
@{
  "UseSSL" = $false
  "Force"  = $true
}

$WinRMServiceAuthSettings =
@{
  ComputerName = "localhost"
  resourceuri  = "winrm/config/service/auth"
  valueset     = @{Basic="true"}
}

$WinRMServiceSettings =
@{
  ComputerName = "localhost"
  resourceuri  = "winrm/config/service"
  valueset     = @{AllowUnencrypted="true"}
}

Set-WSManQuickConfig @WinRMBasicSettings
Set-WSManInstance @WinRMServiceAuthSettings
Set-WSManInstance @WinRMSecuritySettings
</powershell>
