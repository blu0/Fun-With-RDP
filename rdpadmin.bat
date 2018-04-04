
@echo on
net user tester Testing123! /ADD
net localgroup administrators tester /ADD
net localgroup "Remote Desktop Users" tester /ADD
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh firewall add portopening TCP 3389 "RDP"
@echo off
