!include "MUI2.nsh"
!include "WinVer.nsh"
!include "nsDialogs.nsh"

; Constants
!define PRODUCT_NAME "T7x"
!define PRODUCT_DESCRIPTION "Call of Duty® Black Ops III Client"
!define COPYRIGHT "Installer Copyright (C) 2025 Rim. All rights reserved."
!define PRODUCT_VERSION "1.0.0.0"
!define SETUP_VERSION "1.0.0.0"

; Attributes
Name "${PRODUCT_NAME}"
OutFile "build\T7x-Installer-Win64.exe"
InstallDir "$EXEDIR"
RequestExecutionLevel user ; Request user-level execution, not admin

; Version Info
VIProductVersion "${PRODUCT_VERSION}"
VIAddVersionKey "ProductName" "${PRODUCT_NAME}"
VIAddVersionKey "ProductVersion" "${PRODUCT_VERSION}"
VIAddVersionKey "FileDescription" "${PRODUCT_DESCRIPTION}"
VIAddVersionKey "LegalCopyright" "${COPYRIGHT}"
VIAddVersionKey "FileVersion" "${SETUP_VERSION}"

; Modern UI Appearance
!define MUI_ICON "assets\graphics\icons\icon.ico"
!define MUI_UNICON "assets\graphics\icons\icon.ico"
!define MUI_HEADERIMAGE
!define MUI_FINISHPAGE_NOAUTOCLOSE
; !define MUI_FINISHPAGE_RUN "$INSTDIR\t7x.exe"
!define MUI_FINISHPAGE_TEXT "Setup has finished installing ${PRODUCT_NAME} on your computer.$\nClick Finish to close this wizard.$\n$\nRun the t7x.exe application from within your Call of Duty Black Ops 3 game folder or use the Desktop shortcut."

; Modern UI Settings
!define MUI_ABORTWARNING
!define MUI_UNABORTWARNING
!define MUI_FINISHPAGE_SHOWREADME ""
!define MUI_FINISHPAGE_SHOWREADME_CHECKED
!define MUI_FINISHPAGE_SHOWREADME_TEXT "Create Desktop Shortcut"
!define MUI_FINISHPAGE_SHOWREADME_FUNCTION finishpageaction

; Show details by default
ShowInstDetails show
ShowUninstDetails show

; Installer Images
!define MUI_WELCOMEFINISHPAGE_BITMAP "assets\graphics\assets\logo-cropped.bmp"
!define MUI_HEADERIMAGE_BITMAP "assets\graphics\assets\banner-t7x-title.bmp" ; For installer header

; Uninstaller Images
!define MUI_UNHEADERIMAGE_BITMAP "assets\graphics\assets\banner-t7x-title.bmp" ; For uninstaller header
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "assets\graphics\assets\logo-cropped.bmp" ; For uninstaller finish page

; Pages
!insertmacro MUI_PAGE_WELCOME
; !insertmacro MUI_PAGE_LICENSE "assets\text\readme.txt"
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH

; Languages
!insertmacro MUI_LANGUAGE "English"

Function .onInit
    MessageBox MB_OKCANCEL|MB_ICONINFORMATION "Place the installer in your Call of Duty Black Ops III game folder. Click OK to continue or Cancel to exit." IDOK done
    Abort
    done:
FunctionEnd

; Sections
Section "Main Application" SecMain
    SetOutPath $INSTDIR
    File "..\build\bin\x64\Release\t7x.exe"
    File "..\cfg\!start_client.bat"
    File "..\cfg\!start_cp_server.bat"
    File "..\cfg\!start_mp_server.bat"
    File "..\cfg\!start_zm_server.bat"
    WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

Section "Game Directory T7x Files" SecT7xData
    SetOutPath $INSTDIR\t7x
    File /r "..\cfg\t7x\*.*"
SectionEnd

Section "Game Directory Zone Files" SecZoneData
    SetOutPath $INSTDIR\zone
    File /r "..\cfg\zone\*.*"
SectionEnd

Section "Extension File" SecExt
    SetOutPath $INSTDIR\t7x
    File "..\ext\ext.dll"
SectionEnd

Section "Data Files" SecData
    SetOutPath $INSTDIR\t7x\data
    File /r "..\data\*.*"
SectionEnd

Function finishpageaction
    SetOutPath $INSTDIR
    CreateShortcut "$DESKTOP\${PRODUCT_NAME}.lnk" "$INSTDIR\t7x.exe" "" "$INSTDIR\t7x.exe"
FunctionEnd

; Uninstaller Sections
Section "Uninstall"
    Delete $INSTDIR\t7x.exe
    Delete "$DESKTOP\${PRODUCT_NAME}.lnk"
    Delete "$INSTDIR\!start_client.bat"
    Delete "$INSTDIR\!start_cp_server.bat"
    Delete "$INSTDIR\!start_mp_server.bat"
    Delete "$INSTDIR\!start_zm_server.bat"

    Delete "$INSTDIR\zone\server.cfg"
    Delete "$INSTDIR\zone\server_cp.cfg"
    Delete "$INSTDIR\zone\server_zm.cfg"

    Delete $LOCALAPPDATA\cache\cache.bin
    Delete $LOCALAPPDATA\cache\data.bin

    RMDir /r $INSTDIR\t7x
    RMDir /r $LOCALAPPDATA\t7x

    Delete "$INSTDIR\Uninstall.exe"
    RMDir $INSTDIR
SectionEnd

; Create the desktop shortcut based on the checkbox state
; Function .onInstSuccess
; FunctionEnd
