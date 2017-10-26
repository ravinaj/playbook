#Disable UAC
New-ItemProperty -Path HKLM:Software\Microsoft\Windows\CurrentVersion\policies\system -Name EnableLUA -PropertyType DWord -Value 0 -Force -Confirm:$false

#Disabe Firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False

#install IIS

if ((Get-WindowsFeature Web-Default-Doc).Installed -eq 0)
{Install-WindowsFeature -Name Web-Default-Doc}

if ((Get-WindowsFeature Web-Dir-Browsing).Installed -eq 0)
{Install-WindowsFeature -Name Web-Dir-Browsing}

if ((Get-WindowsFeature Web-Http-Errors).Installed -eq 0)
{Install-WindowsFeature -Name Web-Http-Errors}

if ((Get-WindowsFeature Web-Http-Redirect).Installed -eq 0)
{Install-WindowsFeature -Name Web-Http-Redirect}

if ((Get-WindowsFeature Web-DAV-Publishing).Installed -eq 0)
{Install-WindowsFeature -Name Web-DAV-Publishing}

if ((Get-WindowsFeature Web-Static-Content).Installed -eq 0)
{Install-WindowsFeature -Name Web-Static-Content}

if ((Get-WindowsFeature Web-Http-Logging).Installed -eq 0)
{Install-WindowsFeature -Name Web-Http-Logging}

if ((Get-WindowsFeature Web-Request-Monitor).Installed -eq 0)
{Install-WindowsFeature -Name Web-Request-Monitor}

if ((Get-WindowsFeature Web-Stat-Compression).Installed -eq 0)
{Install-WindowsFeature -Name Web-Stat-Compression}

if ((Get-WindowsFeature Web-Filtering).Installed -eq 0)
{Install-WindowsFeature -Name Web-Filtering}

if ((Get-WindowsFeature Web-Basic-Auth).Installed -eq 0)
{Install-WindowsFeature -Name Web-Basic-Auth}

if ((Get-WindowsFeature Web-Url-Auth).Installed -eq 0)
{Install-WindowsFeature -Name Web-Url-Auth}

if ((Get-WindowsFeature Web-IP-Security).Installed -eq 0)
{Install-WindowsFeature -Name Web-IP-Security}

if ((Get-WindowsFeature Web-Windows-Auth).Installed -eq 0)
{Install-WindowsFeature -Name Web-Windows-Auth}

if ((Get-WindowsFeature Web-Net-Ext).Installed -eq 0)
{Install-WindowsFeature -Name Web-Net-Ext}

if ((Get-WindowsFeature Web-Net-Ext45).Installed -eq 0)
{Install-WindowsFeature -Name Web-Net-Ext45}

if ((Get-WindowsFeature Web-AppInit).Installed -eq 0)
{Install-WindowsFeature -Name Web-AppInit}

if ((Get-WindowsFeature Web-Asp-Net).Installed -eq 0)
{Install-WindowsFeature -Name Web-Asp-Net}

if ((Get-WindowsFeature Web-Asp-Net45).Installed -eq 0)
{Install-WindowsFeature -Name Web-Asp-Net45}

if ((Get-WindowsFeature Web-ISAPI-Ext).Installed -eq 0)
{Install-WindowsFeature -Name Web-ISAPI-Ext}

if ((Get-WindowsFeature Web-ISAPI-Filter).Installed -eq 0)
{Install-WindowsFeature -Name Web-ISAPI-Filter}

if ((Get-WindowsFeature Web-Mgmt-Console).Installed -eq 0)
{Install-WindowsFeature -Name Web-Mgmt-Console}

if ((Get-WindowsFeature Web-Mgmt-Compat).Installed -eq 0)
{Install-WindowsFeature -Name Web-Mgmt-Compat}

if ((Get-WindowsFeature Web-Metabase).Installed -eq 0)
{Install-WindowsFeature -Name Web-Metabase}

if ((Get-WindowsFeature Web-Lgcy-Mgmt-Console).Installed -eq 0)
{Install-WindowsFeature -Name Web-Lgcy-Mgmt-Console}

if ((Get-WindowsFeature Web-Lgcy-Scripting).Installed -eq 0)
{Install-WindowsFeature -Name Web-Lgcy-Scripting}

if ((Get-WindowsFeature Web-WMI).Installed -eq 0)
{Install-WindowsFeature -Name Web-WMI}

if ((Get-WindowsFeature Web-Scripting-Tools).Installed -eq 0)
{Install-WindowsFeature -Name Web-Scripting-Tools}

#Install .net framework 3.5
if ((Get-WindowsFeature NET-Framework-Features).Installed -eq 0)
{Install-WindowsFeature -Name NET-Framework-Features -IncludeAllSubFeature}


#Install .net framework 4.5
if ((Get-WindowsFeature NET-Framework-45-Features).Installed -eq 0)
{Install-WindowsFeature -Name NET-Framework-45-Features -IncludeAllSubFeature}

#Install WAS
if ((Get-WindowsFeature WAS).Installed -eq 0)
{Install-WindowsFeature -Name WAS -IncludeAllSubFeature}

#Install Xps
if ((Get-WindowsFeature XPS-Viewer).Installed -eq 0)
{Install-WindowsFeature -Name XPS-Viewer -IncludeAllSubFeature}

#registering .net 2.0
C:\Windows\Microsoft.NET\Framework\v2.0.50727\aspnet_regiis.exe -ir