!include "MUI2.nsh"
!include "WinVer.nsh"
!include "nsDialogs.nsh"

; Constants
!define PRODUCT_NAME "t7x"
!define PRODUCT_DESCRIPTION "Call of Duty Black Ops III Client"
!define COPYRIGHT "Created by Ahrimdon - Free and Open Source"
!define PRODUCT_VERSION "1.0.0.0"
!define SETUP_VERSION "1.0.0.0"

; Attributes
Name "${PRODUCT_NAME}"
OutFile "build\t7xInstaller.exe"
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
!define MUI_ICON "Contrib\Graphics\Icons\icon.ico"
!define MUI_UNICON "Contrib\Graphics\Icons\icon.ico"
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
!define MUI_WELCOMEFINISHPAGE_BITMAP "Contrib\Graphics\Assets\logo-cropped.bmp"
!define MUI_HEADERIMAGE_BITMAP "Contrib\Graphics\Assets\banner-t7x-title.bmp" ; For installer header

; Uninstaller Images
!define MUI_UNHEADERIMAGE_BITMAP "Contrib\Graphics\Assets\banner-t7x-title.bmp" ; For uninstaller header
!define MUI_UNWELCOMEFINISHPAGE_BITMAP "Contrib\Graphics\Assets\logo-cropped.bmp" ; For uninstaller finish page

; Pages
!insertmacro MUI_PAGE_WELCOME
; !insertmacro MUI_PAGE_LICENSE "Readme.txt"
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
    File "game\t7x.exe"
    File "game\base_game_dir\README.md"
    File "game\base_game_dir\T7x_CP_Server.bat"
    File "game\base_game_dir\T7x_MP_Server.bat"
    File "game\base_game_dir\T7x_ZM_Server.bat"
    WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd

Section "Game Directory t7x Files" SecT7xData
    SetOutPath $INSTDIR\t7x
    File /r "game\base_game_dir\t7x\*.*"
SectionEnd

Section "Game Directory zone Files" SecZoneData
    SetOutPath $INSTDIR\zone
    File /r "game\base_game_dir\zone\*.*"
SectionEnd

Section "LocalAppData Files" SecData
    SetOutPath $LOCALAPPDATA\t7x
    File /r "game\localappdata\t7x\*.*"
SectionEnd

Section "LocalAppData Cache Files" SecCache
    SetOutPath $LOCALAPPDATA\cache
    File "game\localappdata\cache\cache.bin"
    File "game\localappdata\cache\data.bin"
SectionEnd

Function finishpageaction
    SetOutPath $INSTDIR
    CreateShortcut "$DESKTOP\${PRODUCT_NAME}.lnk" "$INSTDIR\t7x.exe" "" "$INSTDIR\t7x.exe"
FunctionEnd

; Uninstaller Sections
Section "Uninstall"
    Delete $INSTDIR\t7x.exe
    Delete "$DESKTOP\${PRODUCT_NAME}.lnk"
    Delete "$INSTDIR\README.md"
    Delete "$INSTDIR\T7x_CP_Server.bat"
    Delete "$INSTDIR\T7x_MP_Server.bat"
    Delete "$INSTDIR\T7x_ZM_Server.bat"

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