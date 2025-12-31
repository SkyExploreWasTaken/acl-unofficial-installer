;-----Install------------------
Var Dialog
Var Label

Function SOURCE
  nsDialogs::Create 1018
	Pop $Dialog

	${If} $Dialog == error
		Abort
	${EndIf}

	${NSD_CreateLabel} 0 0 100% 12u "If you would like to see the source code for this installer or review its licenses, please visit:"
	Pop $Label

  ${NSD_CreateText} 0 25u 100% 12u "https://github.com/SkyExploreWasTaken/acl-unofficial-installer"
	Pop $R2
  
  ${NSD_OnClick} $R2 openSourceRepo

  ${NSD_CreateLabel} 0 50u 100% 12u "Or click the button down below:"
	Pop $Label

  ${NSD_CreateButton} 0 75u 40% 12u "Open the source repository"
  Pop $R1
  ${NSD_OnClick} $R1 openSourceRepo

	nsDialogs::Show
FunctionEnd

Function openSourceRepo
  ExecShell open "https://github.com/SkyExploreWasTaken/acl-unofficial-installer"
FunctionEnd

Section "Install"
  CreateDirectory "$INSTDIR"
  CreateDirectory "$INSTDIR\engines"
  CreateDirectory "$INSTDIR\mods"
  CreateDirectory "$INSTDIR\iwads"

  SetOutPath "$INSTDIR"
  File /r "ACL\*"

  SetOutPath "$INSTDIR\engines"
  File /r "engines\*"

  SetOutPath "$INSTDIR\mods"
  File /nonfatal /r "mods\*"

  SetOutPath "$INSTDIR\iwads"
  File /nonfatal /r "iwads\*"

  CreateDirectory "$SMPROGRAMS\ACL"
  CreateShortCut "$SMPROGRAMS\ACL\AceCorp Launcher.lnk" "$INSTDIR\ACL.exe"
  CreateShortCut "$SMPROGRAMS\ACL\Uninstall ACL.lnk" "$INSTDIR\Uninstall.exe"

  WriteUninstaller "$INSTDIR\Uninstall.exe"
SectionEnd
;------------------------------