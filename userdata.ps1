<powershell>
$WinRMSettings =
@{
  "UseSSL" = $true
  "Force"  = $true
}
Set-WSManQuickConfig @WinRMSettings
</powershell>
