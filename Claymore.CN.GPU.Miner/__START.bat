@echo off

    call ..\_config\setup.bat

    IF EXIST "..\_config\inc\clocks-%WORKER%.bat" (
      call ..\_config\inc\clocks-%WORKER%.bat
    )

    echo.%GPU% | FIND /I "Radeon">Nul && ( set PLATFORM=AMD ) || ( goto unsupported )

    setx GPU_FORCE_64BIT_PTR 1 > nul 2>&1
    setx GPU_MAX_HEAP_SIZE 100 > nul 2>&1
    setx GPU_USE_SYNC_OBJECTS 1 > nul 2>&1
    setx GPU_MAX_ALLOC_PERCENT 100 > nul 2>&1
    setx GPU_SINGLE_ALLOC_PERCENT 100 > nul 2>&1

    cls

    IF "%LASTRUN%"=="CNGPU" IF EXIST "config-%WORKER%.txt" (

    echo;

    echo   _ __
    echo       \ \/ / /\ \
    echo        \  / /  \ \ \ \ \ \ _________________
    echo        /  \ \  / / / / / 
    echo   _ __/ /\ \ \/ /          CRYPTONiGHT MiNER

    echo;

    echo   -------------------------------------------
    echo   - CONTiNUE MiNiNG %Symbol%?
    echo   -------------------------------------------
    echo   - [0] NO
    echo   - [1] YES
    echo   -------------------------------------------

    echo;

    set /p ContinueLastRun= --^> CHOOSE YOUR DESTiNY: 

    echo;

    )

    if '%ContinueLastRun%'=='1' goto START

    cls

    echo;

    echo   _ __          
    echo       \ \/ / /\ \
    echo        \  / /  \ \ \ \ \ \ _________________
    echo        /  \ \  / / / / / 
    echo   _ __/ /\ \ \/ /          CRYPTONiGHT MiNER

    echo;

    echo   -------------------------------------------
    echo   - WHAT DO U WANT TO MiNE TODAY?
    echo   -------------------------------------------
    echo   - [1]  BCN (BYTECOiN)
    echo   - [2]  ETN (ELECTRONEUM)
    echo   - [3]  DCY (DiNASTYCOIN)
    echo   - [4]  GRF (GRAFT)
    echo   - [5]  XMR (MONERO)
    echo   - [6]  XMV (MONEROV)
    echo   - [7] ITNS (iNTENSECOIN)
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Coin= --^> CHOOSE YOUR DESTiNY: 

    echo;

    cls

    echo;

    echo   _ __          
    echo       \ \/ / /\ \
    echo        \  / /  \ \ \ \ \ \ _________________
    echo        /  \ \  / / / / / 
    echo   _ __/ /\ \ \/ /          CRYPTONiGHT MiNER

    echo;

    echo   -------------------------------------------
    echo   - PiCK A POOL
    echo   -------------------------------------------

    if '%Coin%'=='1' goto BCN
    if '%Coin%'=='2' goto ETN
    if '%Coin%'=='3' goto DCY
    if '%Coin%'=='4' goto GRF
    if '%Coin%'=='5' goto XMR
    if '%Coin%'=='6' goto XMV
    if '%Coin%'=='7' goto ITNS

    :BCN

    setx Symbol "BCN" > nul 2>&1

    echo   - [1] bytecoin.uk
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Pool= --^> CHOOSE YOUR DESTiNY: 

    echo;

    goto LAUNCH

    :ETN

    setx Symbol "ETN" > nul 2>&1

    echo   - [1] etn.spacepools.org
    echo   - [2] etn.nanopool.org
    echo   - [3] easyhash.io
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Pool= --^> CHOOSE YOUR DESTiNY: 

    echo;

    goto LAUNCH

    :DCY

    setx Symbol "DCY" > nul 2>&1

    echo   - [1] poolmining1.dinastycoin.com
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Pool= --^> CHOOSE YOUR DESTiNY: 

    echo;

    goto LAUNCH

    :GRF

    setx Symbol "GRF" > nul 2>&1

    echo   - [1] graftpool.net
    echo   - [2] graft.spacepools.org
    echo   - [3] mine.graft.network
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Pool= --^> CHOOSE YOUR DESTiNY: 

    echo;

    goto LAUNCH

    :XMR

    setx Symbol "XMR" > nul 2>&1

    echo   - [1] xmr.nanopool.org
    echo   - [2] moriaxmr.com
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Pool= --^> CHOOSE YOUR DESTiNY: 

    echo;

    goto LAUNCH

    :XMV

    setx Symbol "XMV" > nul 2>&1

    echo   - [1] moriaxmv.com
    echo   - [2] pool.baikalmine.com
    echo   - [3] easyhash.io
    echo   - [4] xmv.leafpool.com
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Pool= --^> CHOOSE YOUR DESTiNY: 

    echo;

    goto LAUNCH

    :ITNS

    setx Symbol "ITNS" > nul 2>&1

    echo   - [1] intensecoin.com
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p Pool= --^> CHOOSE YOUR DESTiNY: 

    echo;

    goto LAUNCH

    :LAUNCH

    IF "%RIGTYPE%"=="1" IF EXIST "pool-%Coin%%Pool%-1.txt" (

        type pool-%Coin%%Pool%-1.txt settings.txt > config-%WORKER%.txt
        goto START

    )

    type pool-%Coin%%Pool%.txt settings.txt > config-%WORKER%.txt

    :START

    cls

    echo;

    echo   _ __          
    echo       \ \/ / /\ \
    echo        \  / /  \ \ \ \ \ \ _________________
    echo        /  \ \  / / / / / 
    echo   _ __/ /\ \ \/ /          CRYPTONiGHT MiNER

    echo;

    echo   -------------------------------------------
    echo   - ENABLE LEGACY MODE FOR OLD/MOBiLE GPUS?
    echo   -------------------------------------------
    echo   - [0] NO
    echo   - [1] YES
    echo   -------------------------------------------
    echo   - SYS: %WORKER% / %GPU%
    echo   -------------------------------------------

    echo;

    set /p LegacyMode= --^> CHOOSE YOUR DESTiNY: 

    echo;

    cls

    call ..\_config\_refreshEnv.cmd

    SETX LASTNAME "%Symbol% CRYPTONiGHT GPUMiner" > nul 2>&1

    IF "%LegacyMode%"=="0" (

        SETX LASTEXEC "C:\Apps\Crypto\Miners\Claymore.CN.GPU.Miner\NsGpuCNMiner.exe" > nul 2>&1

    )

    IF "%LegacyMode%"=="1" (

        SETX LASTEXEC "C:\Apps\Crypto\Miners\Claymore.CN.GPU.Miner\NsGpuCNMinerLegacy.exe" > nul 2>&1

    )

    SETX LASTPARAMS "config-%WORKER%.txt" > nul 2>&1

    SETX LASTRUN "CNGPU" > nul 2>&1

    call ..\_config\_refreshEnv.cmd

    start %LAUNCHPARAMS% "%LASTNAME%" /NORMAL %LASTEXEC% %LASTPARAMS%

    exit

    :unsupported

    echo Sorry... GPU not supported!

    pause

    exit