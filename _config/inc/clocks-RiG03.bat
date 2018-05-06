@echo off

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                       ::
::                                                                          M i N E R  //  S E T U P     ::
::                                                                                                       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::: ------------------------------------------------------------------------------------------------------
:::                                                              RiG TYPE (0 - LOWEND / 1 - HIGHEND)
::: ------------------------------------------------------------------------------------------------------

SET RIGTYPE=1

::: ------------------------------------------------------------------------------------------------------
:::                                                                                  CLOCKS / DAGGER
::: ------------------------------------------------------------------------------------------------------

::: Sapphire.Nitro.RX470.Mining.Edition.4GB.Elpida.rom

SET DUALCCLOCK=1169
SET DUALCVDDC=950
SET DUALMCLOCK=1933
SET DUALMVDDC=975
SET DUALPOWLIM=20

SET DCRI=10

::: DUALMiNiNG

IF "%MODE%"=="0" (

SET DUALCCLOCK=1169
SET DUALCVDDC=900
SET DUALMCLOCK=1950
SET DUALMVDDC=950
SET DUALPOWLIM=30

)

::: ------------------------------------------------------------------------------------------------------
:::                                                                             CLOCKS / CRYPTONIGHT
::: ------------------------------------------------------------------------------------------------------

::: Sapphire.Nitro.RX470.Mining.Edition.4GB.Elpida.rom

SET GPUCCLOCK=1250
SET GPUCVDDC=985
SET GPUMCLOCK=1850
SET GPUMVDDC=975
SET GPUPOWLIM=40

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                                                       ::
::   E O F !                                                                                             ::
::                                                                                                       ::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::