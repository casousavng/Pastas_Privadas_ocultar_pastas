CLS
@ECHO OFF
COLOR 0A

TITLE PASTAS PRIVADAS by Andre Sousa - CARLOSSOUSA1987@HOTMAIL.COM
echo.
echo       ------------------------------
echo      #                              #
echo      #     PASTAS PRIVADAS v1.0     #
echo      #                              #
echo       ------------------------------
echo.
echo  Este executavel permite criar uma pasta denominada "Pasta Privada" e posteriormente
echo  oculta-la de terceiros estando apenas acessivel inserindo a respectiva Password.
echo.
echo  COMO UTILIZAR:
echo.
echo     1 - Copiar este executavel para a pasta onde tem os arquivos a ocultar.
echo     2 - Clicar no executavel.
echo     3 - Sera criada uma sub-pasta na pasta de origem com o nome "Pasta_Privada".
echo     4 - Mova todos os ficheiros que pretende ocultar para essa pasta.
echo     5 - Corra novamente o executavel e responda afirmativamente a 
echo         questao apresentada.
echo.   
echo                   --- PASTA PRIVADA ESCONDIDA E PROTEGIDA ---  
echo.  
echo     !ATENCAO! Nao deve nunca mudar o nome da pasta senao o executavel nao funciona.
echo.
echo  Para voltar a aceder a "Pasta Privada" basta correr o executavel, inserir a  
echo  Password e a pasta ficara visivel e desprotegida.
echo.
echo       -------------------------------------------------------
echo      #       ANDRE SOUSA - CARLOSSOUSA1987@HOTMAIL.COM       #
echo       -------------------------------------------------------
echo.

PAUSE
CLS

GOTO INICIO

:INICIO
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Pasta_Privada goto MDLOCKER

:CONFIRM
echo.
echo    ----------------------------------------------------------- 
echo   #                                                           #
echo   #   Pretende tornar a "Pasta Privada" oculta e protegida?   #
echo   #                                                           #
echo    ----------------------------------------------------------- 
echo.
echo  OPCOES
echo.
echo  SIM - Oculta a "Pasta Privada" e todos os ficheiros nela contidos.
echo.
echo  NAO - Mantem a "Pasta Privada" visivel e sai do programa.
echo.
set/p "cho= >>> "
if %cho%==S goto PASSCRIAR1
if %cho%==s goto PASSCRIAR1
if %cho%==Sim goto PASSCRIAR1
if %cho%==sim goto PASSCRIAR1
if %cho%==SIM goto PASSCRIAR1
if %cho%==n goto END
if %cho%==N goto END
if %cho%==Nao goto END
if %cho%==nao goto END
if %cho%==NAO goto END
echo.
echo  Escolha entre as duas opcoes permitidas.
echo. ----------------------------------------
goto CONFIRM

:LOCK
ren Pasta_Privada "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo.
echo  Pasta Privada protegida.
echo.
echo  Para colocar a Pasta Provada visivel e desprotegida corra novamente o executavel 
echo  e digite a password.
echo.
echo  Obrigado por usar o meu executavel.
goto COUNT


:UNLOCK
echo.
echo    -------------------------------------------------------- 
echo   #                                                        #
echo   #   Insira a Password para desbloquear a Pasta Privada   #
echo   #                                                        #
echo    --------------------------------------------------------
echo.
echo  IMPORTANTE
echo.
echo    - Caso tenha perdido a Password tera de solicitar a Master Password.
echo    - Dispoem de apenas tres tentativas ate ser pedida a Master Password.
echo    - Case Sensitive! Tenha atencao ao CAPS LOCK.
echo.

:PASS1
set/p "pass= Password: "
if NOT %pass%== cas13248792 goto FAIL1
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
echo  Pasta Privada desbloqueada com sucesso.
echo.
echo  Obrigado por usar o meu executavel.
goto COUNT

:PASS2
set/p "pass= Password: "
if NOT %pass%== cas13248792 goto FAIL2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
echo  Pasta Privada desbloqueada com sucesso.
echo.
echo  Obrigado por usar o meu executavel.
goto COUNT

:PASS3
set/p "pass= Password: "
if NOT %pass%== cas13248792 goto FAILMASTER
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
echo  Pasta Privada desbloqueada com sucesso.
echo.
echo  Obrigado por usar o meu executavel.
goto COUNT




:PASSCRIAR1
echo.
echo  Insira a Password para autenticar a sua opcao.
echo.
set/p "pass= Password: "
if NOT %pass%== cas13248792 goto FAILCRIAR1
goto LOCK

:PASSCRIAR2
echo.
echo  Insira a Password para autenticar a sua opcao.
echo.
set/p "pass= Password: "
if NOT %pass%== cas13248792 goto FAILCRIAR2
goto LOCK

:PASSCRIAR3
echo.
echo  Insira a Password para autenticar a sua opcao.
echo.
set/p "pass= Password: "
if NOT %pass%== cas13248792 goto FAILCRIARALL
goto LOCK

:FAILCRIAR1
echo.
echo  Password invalida. Repita por favor. ATENCAO! TEM MAIS DUAS TENTATIVAS.
echo.
goto PASSCRIAR2

:FAILCRIAR2
echo.
echo  Password invalida. Repita por favor. ATENCAO! TEM MAIS UMA TENTATIVA.
echo.
goto PASSCRIAR3


:FAILCRIARALL
echo.
echo    ------------------------------------------------------------------
echo   #                                                                  #
echo   #   Solicite por email uma Password para poder criar a sua pasta   #
echo   #   privada. Sera enviada logo que possivel.                       #
echo   #                                                                  #
echo   #               e-mail: carlossousa1987@hotmail.com                #
echo   #                                                                  #
echo    ------------------------------------------------------------------
echo.
Pause
goto end















:MASTERPASS
echo.
set/p "pass= Master Password: "
if NOT %pass%== qwertyuiop goto FAILALL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
echo  Pasta Privada desbloqueada com sucesso.
echo.
echo  Obrigado por usar o meu executavel.
goto COUNT


:FAIL1
echo.
echo  Password invalida. Repita por favor. ATENCAO! TEM MAIS DUAS TENTATIVAS.
echo.
goto PASS2

:FAIL2
echo.
echo  Password invalida. Repita por favor. ATENCAO! TEM MAIS UMA TENTATIVA.
echo.
goto PASS3

:FAILMASTER
echo.
echo  Password invalida. Insira por favor a Master Password.
goto MASTERPASS

:FAILALL
echo.
echo    ------------------------------------------------------------------
echo   #                                                                  #
echo   #   Solicite por email a Master Password para poder aceder a sua   #
echo   #   pasta privada. Sera enviada logo que possivel.                 #
echo   #                                                                  #
echo   #               e-mail: carlossousa1987@hotmail.com                #
echo   #                                                                  #
echo    ------------------------------------------------------------------
echo.
Pause
goto end

:MDLOCKER
md Pasta_Privada
echo.
echo    ------------------------------------
echo   #                                    #
echo   #  PASTA PRIVADA CRIADA COM SUCESSO  #
echo   #                                    #
echo    ------------------------------------
echo.
goto COUNT

:COUNT
echo.
echo  Esta janela fecha automaticamente.
ping -n 2 127.0.0.1>nul
ping -n 2 127.0.0.1>nul
goto End

cls
:END
End