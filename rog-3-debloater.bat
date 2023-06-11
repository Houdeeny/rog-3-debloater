@echo off
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo " ______ _____ _____   _____  ______ ___________ _     _____  ___ _____ ___________  "
echo " | ___ \  _  |  __ \ |____ | |  _  \  ___| ___ \ |   |  _  |/ _ \_   _|  ___| ___ \ "
echo " | |_/ / | | | |  \/     / / | | | | |__ | |_/ / |   | | | / /_\ \| | | |__ | |_/ / "
echo " |    /| | | | | __      \ \ | | | |  __|| ___ \ |   | | | |  _  || | |  __||    /  "
echo " | |\ \\ \_/ / |_\ \ .___/ / | |/ /| |___| |_/ / |___\ \_/ / | | || | | |___| |\ \  "
echo " \_| \_|\___/ \____/ \____/  |___/ \____/\____/\_____/\___/\_| |_/\_/ \____/\_| \_| "
echo "                                                                                    "
echo """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
echo.
echo DISCLAIMER: Use at your own risk. I am not responsible for anything that could happen to your phone.
echo.
echo This script will take up to a few minutes to complete.
set /P "choice=Do you want to continue with the debloating process? (Y/N): "

if /I "%choice%"=="Y" (
    for /F "delims=" %%a in (packages.json) do (
        adb shell pm uninstall --user 0 "%%a"
    )
    echo Your ASUS ROG Phone 3 has been debloated.
    echo It is highly recommended to reboot your phone.
) else (
    echo Process cancelled.
)

pause