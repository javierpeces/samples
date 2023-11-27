<# PS C:\Users\user\local\src> runas /user:administrator 
       "Set-ExecutionPolicy -executionpolicy unrestricted -scope localmachine"
       Escriba la contraseña para administrator:
       Intentando iniciar Set-ExecutionPolicy -executionpolicy unrestricted 
       -scope localmachine como usuario "DESKTOP-HIC01UR\administrator" ...
   ERROR RUNAS: no se puede ejecutar - Set-ExecutionPolicy -executionpolicy unrestricted -scope localmachine
   1326: El nombre de usuario o la contraseña no son correctos.
#>

$listopack = (
	"putty.putty",
	"winscp.winscp",
	"notepad++.notepad++",
	"7zip.7zip",
	"ChristianKindahl.infrarecorder",
	"microsoft.office",
	"Microsoft.VisualStudioCode",
	"GlobalProtect",
	"Python.Python.3.11",
	"microsoft.teams",
	"google.chrome",
	"keepassxcteam.keepassxc"
)

foreach ( $item in $listopack ) {
	
	# write-host $item
	winget install $item
}