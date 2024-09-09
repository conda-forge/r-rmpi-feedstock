"%R%" CMD INSTALL --build --configure-args="--with-Rmpi-include=%PREFIX%/include --with-Rmpi-libpath=%PREFIX%/lib --with-Rmpi-type=MSMPI" . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
