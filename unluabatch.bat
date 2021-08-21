@echo off
color 02

echo:
echo "==========================================================="
echo "=== +-++-++-++-++-++-++-++-++-++-++-++-++-++-++-++-++-+ ==="
echo "=== |   THE UNLUAC BATCH TOOL - THE POWER OF UNLUAC!  | ==="
echo "=== |  REMEMBER TO MADE BACKUP OF YOUR OLD .lua FILES | ==="
echo "=== |      BEFORE PROCEEDING TO THE NEXT STEPS!       | ==="
echo "=== |                                                 | ==="
echo "=== |    IF YOU WANT TO REWARD ME FOR THIS SCRIPT,    | ==="
echo "=== |   ANY VALUES ARE WELCOME! HERE MY BTC WALLET:   | ==="
echo "=== |       3LpEGJDEWwTHBE473z8Z18aJzNXf1JwyTc        | ==="
echo "=== +-++-++-++-++-++-++-++-+-+-+-+-+-+-+-+-+-+-+-+-+-++ ==="
echo "==========================================================="
echo:

set /p question="| ARE YOU READY? ENTER (yes) to continue or (no) to stop this script: | "

if %question%==yes (echo:)
if %question% NEQ yes (exit)

set input=%%i
set arg1=%%~pi
set arg2=%%~ni

FOR /r %input% IN ("*.lua") DO (
	java -jar unluac.jar "%input%" > "%arg1% %arg2%".luac
	echo "%arg1% %arg2%.lua" Successfully decompiled to .luac!"
)

echo:
echo "=================================================="
echo "===  +-++-++-++-++-++-++-++-++-++-++-++-++-++  ==="
echo "===  |REMOVING OLD AND UNREADABLE .lua FILES|  ==="
echo "===  +-++-++-++-++-++-++-++-+-+-+-+-+-+-+-+-+  ==="
echo "=================================================="
echo:

FOR /r %%o IN ("*.lua") DO (
	if %%~xo==.lua (
		del %%o
		echo " %%~no.lua Successfully deleted! "
	)
)

echo:
echo "============================================================"
echo "===  +-++-++-++-++-++-++-++-++-++-++-++-++-++-++-++--++  ==="
echo "===  |RENAMING NEW GENERATED .luac FILES TO .lua FILES|  ==="
echo "===  +-++-++-++-++-++-++-++-+-+-+-+-+-+-+-+-+-+-+-+-+-+  ==="
echo "============================================================"
echo:

FOR /R %%R IN (*.luac) DO (
	ren "%%R" *.lua
	echo " %%~nR.luac Successfully renamed to %%~nR.lua "
)

echo:
echo "========================================================="
echo "=== -+-++-++-++-++-++-++-++-++-++-++-++-++-++-++-++-  ==="
echo "=== | LUA FILES ARE READY TO USE, HAPPY MODDING! =) | ==="
echo "=== |  IF YOU WANT TO REWARD ME FOR THIS SCRIPT,    | ==="
echo "=== | ANY VALUES ARE WELCOME! HERE MY BTC WALLET:   | ==="
echo "=== |     3LpEGJDEWwTHBE473z8Z18aJzNXf1JwyTc        | ==="
echo "=== -+-++-++-++-++-++-++-++-+-+-+-+-+-+-+-+-+-+-+-+-  ==="
echo "========================================================="
echo:

pause