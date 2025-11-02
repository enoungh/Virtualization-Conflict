@echo off
chcp 65001 >nul
echo === 启用 Docker + WSL2 模式 ===
echo.
echo 适用软件：
echo - Docker Desktop (WSL2)
echo - WSL2 (Ubuntu / Debian / Kali 等子系统)
echo - Visual Studio Code Remote - WSL
echo.
echo 正在启用虚拟化相关功能...

dism /online /enable-feature /featurename:Microsoft-Hyper-V-All /norestart
dism /online /enable-feature /featurename:VirtualMachinePlatform /norestart
dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /norestart
dism /online /enable-feature /featurename:HypervisorPlatform /norestart

bcdedit /set hypervisorlaunchtype auto

echo.
echo ✅ 已启用 Docker + WSL2 模式，请重启系统生效。
pause
