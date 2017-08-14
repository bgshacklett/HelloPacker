<powershell>
$WinRMSettings =
@{
  "UseSSL" = $false
  "Force"  = $true
}
Set-WSManQuickConfig @WinRMSettings
</powershell>
