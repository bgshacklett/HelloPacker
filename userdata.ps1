<powershell>
# Force all network connections to be private
Get-NetConnectionProfile | Set-NetConnectionProfile -NetworkCategory Private

# Enable WinRM
$WinRMSettings =
@{
  "UseSSL" = $false
  "Force"  = $true
}
Set-WSManQuickConfig @WinRMSettings
</powershell>
