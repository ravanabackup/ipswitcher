@echo off
:menu
cls
echo Select DNS configuration:
echo 1. Office DNS
echo 2. Reset DNS
echo 3. Open Network and Sharing Center
echo 4. Exit

set /p choice="Enter your choice (1, 2, 3, or 4): "

if "%choice%"=="1" (
    netsh interface ip set address name="Wi-Fi" static 10.xxx.xxx.xx 255.255.255.0 10.xxx.xxx.1
    netsh interface ip set dns name="Wi-Fi" static xxx.xxx.x.1
    netsh interface ip add dns name="Wi-Fi" xxx.xxx.xx.3 index=2
    echo Office network settings applied.
) else if "%choice%"=="2" (
    netsh interface ip set address name="Wi-Fi" dhcp
    netsh interface ip set dns name="Wi-Fi" dhcp
    echo DNS settings have been reset to default.
) else if "%choice%"=="3" (
    control.exe /name Microsoft.NetworkAndSharingCenter
    echo Network and Sharing Center opened.
) else if "%choice%"=="4" (
    exit
) else (
    echo Invalid choice. Please select 1, 2, 3, or 4.
)

pause
goto menu
