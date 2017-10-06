fastboot %* flash -u recovery "%~dp0images\recovery.img"
fastboot %* flash -u -S 16M system "%~dp0images\system.img"

fastboot %* reboot
