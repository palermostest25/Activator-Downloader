@echo off
:init
setlocal DisableDelayedExpansion
set cmdInvoke=1
set winSysFolder=System32
set "batchPath=%~dpnx0"
for %%k in (%0) do set batchName=%%~nk
set "vbsGetPrivileges=%temp%\OEgetPriv_%batchName%.vbs"
setlocal EnableDelayedExpansion

:checkPrivileges
NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto gotPrivileges ) else ( goto getPrivileges )

:getPrivileges
if '%1'=='ELEV' (echo ELEV & shift /1 & goto gotPrivileges)
ECHO.
ECHO Invoking UAC for Privilege Escalation
ECHO.

ECHO Set UAC = CreateObject^("Shell.Application"^) > "%vbsGetPrivileges%"
ECHO args = "ELEV " >> "%vbsGetPrivileges%"
ECHO For Each strArg in WScript.Arguments >> "%vbsGetPrivileges%"
ECHO args = args ^& strArg ^& " "  >> "%vbsGetPrivileges%"
ECHO Next >> "%vbsGetPrivileges%"
if '%cmdInvoke%'=='1' goto InvokeCmd 
ECHO UAC.ShellExecute "!batchPath!", args, "", "runas", 1 >> "%vbsGetPrivileges%"
goto ExecElevation

:InvokeCmd
ECHO args = "/c """ + "!batchPath!" + """ " + args >> "%vbsGetPrivileges%"
ECHO UAC.ShellExecute "%SystemRoot%\%winSysFolder%\cmd.exe", args, "", "runas", 1 >> "%vbsGetPrivileges%"

:ExecElevation
"%SystemRoot%\%winSysFolder%\WScript.exe" "%vbsGetPrivileges%" %*
exit /B

:gotPrivileges
setlocal & cd /d %~dp0
if '%1'=='ELEV' (del "%vbsGetPrivileges%" 1>nul 2>nul  &  shift /1)

:start
cls
echo 1=UltraISO
echo 2=VMWare Workstation 12
echo 3=VMWare Workstation 14
echo 4=VMWare Workstation 16
echo 5=WinRAR
echo 6=Assetto Corsa Content Manager
echo 7=List of all the things paid for
echo 8=500 Blooket Coins
echo 9=YouTube Downloader
echo 10=Private Internet Access
echo.
echo ===============================
echo Warning: The next of these items are cracked and include instructions on how to crack them.
echo ===============================
echo.
echo 11=RamDisk
echo 12=WinToUSB
echo 13=Uninstall Tool 3510
echo 14=All versions of VEGAS Pro
echo 15=Adobe Create Cloud (malwarewatch.org)
echo.
echo 100=Delete this item from the startup list
set /p otherstuffopt=Please enter your option-

if %otherstuffopt%==ultraiso (
    goto ultraiso
)

if %otherstuffopt%==Ultraiso (
    goto ultraiso
)

if %otherstuffopt%==UltraIso (
    goto ultraiso
)

if %otherstuffopt%==UltraISO (
    goto ultraiso
)

if %otherstuffopt%==ULTRAISO (
    goto ultraiso
)

if %otherstuffopt%==1 (
    :ultraiso
    echo Use this key:
    echo Any Name
    echo 4434-8CB4-ECAB-06E0
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==2 (
    echo Use one of these keys:
    echo GY7EA-66D53-M859P-5FM7Z-QVH96
    echo CC15K-AYF01-H897Q-75Y7E-PU89A
    echo UC3WA-DFE01-M80DQ-AQP7G-PFKEF
    echo ZA1RA-82EDM-M8E2P-YGYEZ-PC8ED
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==3 (
    echo Use this key:
    echo YV54A-2ZW5P-M887Y-UWXNE-QPUXDYV54A-2ZW5P-M887Y-UWXNE-QPUXD
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==4 (
    echo Use this key:
    echo ZF3R0-FHED2-M80TY-8QYGC-NPKYF
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==winrar (
    goto winrar
)

if %otherstuffopt%==Winrar (
    goto winrar
)

if %otherstuffopt%==WinRar (
    goto winrar
)

if %otherstuffopt%==WinRAR (
    goto winrar
)

if %otherstuffopt%==WINRAR (
    goto winrar
)

if %otherstuffopt%==5 (
    :winrar
    echo Copy this into a text file in the winrar installation directory, normally "C:\Program Files\WinRAR" called "rarreg.key"
    echo.
    echo RAR registration data
    echo WinRAR
    echo Unlimited Company License
    echo UID=4b914fb772c8376bf571
    echo 6412212250f5711ad072cf351cfa39e2851192daf8a362681bbb1d
    echo cd48da1d14d995f0bbf960fce6cb5ffde62890079861be57638717
    echo 7131ced835ed65cc743d9777f2ea71a8e32c7e593cf66794343565
    echo b41bcf56929486b8bcdac33d50ecf773996052598f1f556defffbd
    echo 982fbe71e93df6b6346c37a3890f3c7edc65d7f5455470d13d1190
    echo 6e6fb824bcf25f155547b5fc41901ad58c0992f570be1cf5608ba9
    echo aef69d48c864bcd72d15163897773d314187f6a9af350808719796
    echo.
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==6 (
    echo Use this key:
    echo TN4Z-XFQ4-AKUZ-ZLZ9-Q56L-3WX5-SRZ4-W7UG
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==7 (
    echo Here is the list:
    echo Steam Stuff
    echo Private Internet Access
    echo Xbox Game Pass/EA Play
    echo Spotify Premium
    echo Netflix
    echo Abelton Live 11 Intro
    echo Google Drive - 100GB
    echo Microsoft Office 365  with 1TB OneDrive
    echo Google Domains - Denby.dev
    echo Windows License - Windows 10 Pro
    echo Adobe Creative Cloud
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==8 (
    start /max https://drive.google.com/file/d/1riO0k3-lAuJmoLnCmHJBPsEN4r8IOtL5/view?usp=sharing
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==9 (
    start /max https://drive.google.com/file/d/16FDyTgA2F3rhBPsx_AEwdnJS84vv-xkk/view?usp=sharing
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==10 (
    echo Use this username and password combination
    echo p0462552
    echo eMqLWHAdS5
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==11 (
    start /max https://dl.malwarewatch.org/software/useful/RAMDisk.zip
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==12 (
    start /max https://dl.malwarewatch.org/software/useful/WinToUSB.zip
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==13 (
    start /max https://dl.malwarewatch.org/software/useful/UninstallTool3510.zip
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==14 (
    start /max https://dl.malwarewatch.org/software/useful/vegas/
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==15 (
    start /max https://dl.malwarewatch.org/software/useful/adobe/
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %otherstuffopt%==100 (
    del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\Activator.lnk"
	echo Done.
    echo Press any key to activate another product
    pause > nul
    goto start
)

goto error2

:actvprehistoric
cls
echo 1=Windows XP
echo 2=Windows XP (X86)
echo 3=Windows 2000
echo 4=Windows ME
echo 5=Windows 98 SE
echo 6=Windows 95
echo 7=Windows NT 4
echo 8=Microsoft Office(Will take you to a different menu)
echo 9=Download Microsoft Office (Prehistoric)
set /p prehistoricopt=Please enter your option-
if %prehistoricopt%==1 (
    echo Use this key:
    echo VCFQD-V9FX9-46WVH-K3CD4-4J3JM
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %prehistoricopt%==2 (
    echo Use this key:
    echo MRX3F-47B9T-2487J-KWKMF-RPWBY
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %prehistoricopt%==3 (
    echo Use this key:
    echo G7VKM-WM72Y-JJXGT-F4BJG-D6RPQ
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %prehistoricopt%==4 (
    echo Use this key:
    echo B6BYC-6T7C3-4PXRW-2XKWB-GYV33
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %prehistoricopt%==5 (
    echo Use this key:
    echo RW9MG-QR4G3-2WRR9-TG7BH-33GXB
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %prehistoricopt%==6 (
    echo Use this key:
    echo 24796-OEM-0014736-66386
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %prehistoricopt%==7 (
    echo Use these keys:
    echo 28997-OEM-0025957-49297 30495-OEM-0006276-08104
    echo 40159-OEM-0211111-11111 34698-OEM-0039682-50656
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %prehistoricopt%==8 (
    goto premicrosoftoffice
)

if %prehistoricopt%==9 (
    start /max https://dl.malwarewatch.org/software/useful/office/
    echo Press any key to activate another product
    pause > nul
    goto start

)

goto error3

:premicrosoftoffice
cls
echo 1=Microsoft Office 97
echo 2=Microsoft Office 200
echo 3=Microsoft Office 2007
set /p premicrosoftofficeopt=Please enter your option-
if %premicrosoftofficeopt%==1 (
    echo Use this key:
    echo 1112-1111111
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %premicrosoftofficeopt%==2 (
    echo Use this key:
    echo H4GW2-2M9C4-R8YWX-BYJFT-KKFQ3
    echo Press any key to activate another product
    pause > nul
    goto start
)

if %premicrosoftofficeopt%==3 (
    echo Use this key:
    echo KGFVY-7733B-8WCK9-KTG64-BC7D8
    echo Press any key to activate another product
    pause > nul
    goto start
)

goto error4
:error
echo Error.
echo You did not enter a valid option: %option%
echo Press any key to go back to the start
pause > nul
goto start

:error1
echo Error.
echo You did not enter a valid option: %serveropt%
echo Press any key to go back to the start
pause > nul
goto start

:error2
echo Error.
echo You did not enter a valid option: %otherstuffopt%
echo Press any key to go back to the start
pause > nul
goto start

:error3
echo Error.
echo You did not enter a valid option: %prehistoricopt%
echo Press any key to go back to the start
pause > nul
goto start

:error4
echo Error.
echo You did not enter a valid option: %premicrosoftofficeopt%
echo Press any key to go back to the start
pause > nul
goto start

:error5
echo Error.
echo This option requires elevation.
echo Press any key to go back to the start
pause > nul
goto start

:error6
echo Error.
echo This option requires elevation.
echo Press any key to go back to the start
pause > nul
goto start