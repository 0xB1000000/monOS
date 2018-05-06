:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                       ::
::                                                                          m o n O $  //  S E T U P     ::
::                                                                                                       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: ------------------------------------------------------------------------------------------------------
:::                                                                    WORKER AND EMAIL/LOGIN CONFiG
::: ------------------------------------------------------------------------------------------------------

SET WORKER=%computername%
SET MAIL=some@gmail.com

::: ------------------------------------------------------------------------------------------------------
:::                                                   ADDiTiONAL POOL LOGIN/WORKER CONFiG (OPTiONAL)
::: ------------------------------------------------------------------------------------------------------

SET MININGPOOLHUBLOGIN=
SET SUPRNOVALOGIN=

::: ------------------------------------------------------------------------------------------------------
:::                                                                                    WALLET CONFiG
::: ------------------------------------------------------------------------------------------------------

SET ETHWALLET=
SET ETCWALLET=
SET CLOWALLET=
SET ZECWALLET=
SET ZCLWALLET=
SET BCNWALLET=
SET ETNWALLET=
SET GRFWALLET=
SET DCYWALLET=
SET ELLWALLET=
SET ETPWALLET=
SET EXPWALLET=
SET MUSWALLET=
SET UBQWALLET=
SET BTGWALLET=
SET XMRWALLET=
SET TZCWALLET=
SET BTCPWALLET=
SET BTCZWALLET=
SET PIRLWALLET=
SET ITNSWALLET=

SET XVGWALLET=
SET SIAWALLET=
SET MAXWALLET=
SET PASCWALLET=

::: ------------------------------------------------------------------------------------------------------
:::                                                                           CLAYMORE BASE SETTiNGS
::: ------------------------------------------------------------------------------------------------------

SET NOFEE=0
SET DEBUG=-1
SET RETRY=60

::: ------------------------------------------------------------------------------------------------------
:::                                                    CLAYMORE CPUMiNER CONFiG (EMPTY = AUTODETECT)
::: ------------------------------------------------------------------------------------------------------

SET CPUTHREADS=

::: ------------------------------------------------------------------------------------------------------
:::                                                                    CLAYMORE REMOTEMANAGER CONFiG
::: ------------------------------------------------------------------------------------------------------

SET CPUREMPORT=1338
SET GPUREMPORT=1337
SET DUALREMPORT=1337
SET ZCLREMPORT=1337

SET REMPASS=

::: ------------------------------------------------------------------------------------------------------
:::                                                                                  MKXMiNER CONFiG
::: ------------------------------------------------------------------------------------------------------

SET MKINTENSITY=23
SET MKPOWTUNE=15

::: ------------------------------------------------------------------------------------------------------
:::                                                                                   ETHPROXY SETUP
::: ------------------------------------------------------------------------------------------------------

::: ETHPROXY iP

SET PIP=192.168.0.200

::: ETHPROXY PORT

SET PPETH=1337
SET PPMUS=1338
SET PPEXP=1339
SET PPUBQ=1340
SET PPELL=1342
SET PPETC=1343
SET PPETP=1345

::: ------------------------------------------------------------------------------------------------------
:::                                                         SET LAUNCH PARAMETERS (EG. /min or /max)
::: ------------------------------------------------------------------------------------------------------

SET LAUNCHPARAMS=/max

::: ------------------------------------------------------------------------------------------------------
:::                                               GET CPU/GPU/SYS iNFO (DO NOT EDIT BELOW THIS LiNE)
::: ------------------------------------------------------------------------------------------------------

for /f "tokens=*" %%f in ('wmic cpu get Name ^| find "."') do SET CPU=%%f
for /F "tokens=* skip=1" %%n in ('WMIC path Win32_VideoController get Name ^| findstr "."') do SET GPU=%%n
echo.%GPU% | FIND /I "Radeon">Nul && ( SET PLATFORM=G ) || ( SET PLATFORM=X )

set /a GPUCNT=0
for /F "tokens=* skip=1" %%n in ('WMIC path Win32_VideoController get Name ^| findstr "."') do set /a GPUCNT=GPUCNT+1

SETX RIGTYPE "0" > nul 2>&1
if %GPUCNT% geq 3 (SETX RIGTYPE "1") > nul 2>&1

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                       ::
::   E O F !                                                                                             ::
::                                                                                                       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::