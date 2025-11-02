@echo off
chcp 65001 >nul
echo === 启用 VMware / VirtualBox / 模拟器 模式 ===
echo.
echo 适用软件：
echo - VMware Workstation
echo - VirtualBox
echo - 雷电模拟器
echo - 腾讯应用宝
echo.
echo 正在禁用与 Hyper-V 相关的功能...

dism /online /disable-feature /featurename:Microsoft-Hyper-V-All /norestart
dism /online /disable-feature /featurename:VirtualMachinePlatform /norestart
dism /online /disable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart
dism /online /disable-feature /featurename:HypervisorPlatform /norestart
dism /online /disable-feature /featurename:Windows-Hypervisor-Platform /norestart

bcdedit /set hypervisorlaunchtype off

echo.
echo ✅ 已启用 VMware / VirtualBox / 模拟器 模式，请重启系统生效。
pause
