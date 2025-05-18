@echo off
title hash cleaner

:: Limpeza de registros
REG DELETE HKEY_CURRENT_USER\Software\WinRAR\ArcHistory /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\AppSwitched /f
REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\FeatureUsage\ShowJumpView /f
REG DELETE HKEY_CURRENT_USER\Software\Classes\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f
REG DELETE HKEY_CLASSES_ROOT\Local Settings\Software\Microsoft\Windows\Shell\MuiCache /f

:: Limpeza de diretórios do FiveM
rd /s /q "%LocalAppData%\FiveM\FiveM.app\cache"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\logs"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\crashes"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\data\cache"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\data\nui-storage"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-priv"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\data\server-cache-ext"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\data\game-storage"
rd /s /q "%LocalAppData%\FiveM\FiveM.app\plugins"
rd /s /q "%AppData%\CitizenFX\kvs"
rd /s /q "%LocalAppData%\DigitalEntitlements"

:: Limpeza de pastas temporárias do sistema
del /f /s /q "%temp%\*.*"
rd /s /q "%temp%"
md "%temp%"

del /f /s /q "%systemroot%\Temp\*.*"
rd /s /q "%systemroot%\Temp"
md "%systemroot%\Temp"

echo Limpeza concluída com sucesso!
pause
