@ECHO OFF
cls
@ECHO OFF
COLOR F0
MODE 89,43
TITLE PASTAS PRIVADAS v1.2 scripted by Andre Sousa @ 18/09/2009 - VERSAO DE TESTE PEOPLEWARE
echo.
echo      ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo      º                                                                             º
echo      º                             PASTAS PRIVADAS v1.2                            º
echo      º                                                                             º
echo      ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo     ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo     ³                                                                               ³
echo     ³ Este programa permite criar uma pasta denominada "Pasta_Privada_" e oculta-la ³
echo     ³ de terceiros estando apenas acessivel inserindo a respectiva Password.        ³
echo     ³                                                                               ³
echo     ³ COMO UTILIZAR:                                                                ³
echo     ³                                                                               ³
echo     ³  1 - Copiar este executavel para a pasta onde tem os arquivos a ocultar.      ³
echo     ³  2 - Clicar no executavel e seguir as instrucoes.                             ³
echo     ³  3 - Sera criada uma sub-pasta na pasta de origem com o nome "Pasta_Privada_".³
echo     ³  4 - Mova todos os ficheiros que pretende ocultar para essa pasta.            ³
echo     ³  5 - Corra novamente o executavel e responda afirmativamente a                ³
echo     ³      questao apresentada.                                                     ³
echo     ³  6 - Ja esta. A SUA PASTA PRIVADA ESTA ESCONDIDA E PROTEGIDA.                 ³
echo     ³                                                                               ³
echo     ³ !ATENCAO! Nao deve nunca mudar o nome da pasta senao o programa nao funciona. ³
echo     ³           Pode mudar o nome do executavel para o nome que quiser.             ³
echo     ³           Pode ser usado diversas vezes desde que copiado para a pasta        ³
echo     ³           escolhida e renomeado.                                              ³
echo     ³                                                                               ³
echo     ³ Para voltar a aceder a "Pasta_Privada_" basta correr o executavel, inserir a  ³
echo     ³ Password e a pasta ficara visivel e desprotegida.                             ³
echo     ³                                                                               ³
echo     ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
echo      ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo      º                               SOFTWARE LIVRE                                º
echo      ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo         ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo         ³                         PASSWORD CRIADA PARA                          ³
echo         ³                          CARLOS ANDRE SOUSA                           ³
echo         ³                           DESDE 15/09/2009                            ³
echo         ³                             USO PESSOAL                               ³
echo         ³                      CARLOSSOUSA1987@HOTMAIL.COM                      ³
echo         ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.
PAUSE
CLS
GOTO INICIO







:INICIO
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Pasta_Privada goto MDLOCKER
:CONFIRMAR
echo.
echo     ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                                                 ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ   PRETENDE TORNAR A PASTA OCULTA E PROTEGIDA?   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                                                 ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.
echo          ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo          ³ OPCOES                                                              ³
echo          ³                                                                     ³
echo          ³ SIM - Oculta a "Pasta_Privada_" e todos os ficheiros nela contidos. ³
echo          ³ NAO - Mantem a "Pasta_Privada_" visivel e sai do programa.          ³
echo          ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.

:OPCAO
@ECHO OFF
COLOR F0
set/p "cho=      >>> "
if %cho%==Sim goto PASSCRIAR1
if %cho%==sim goto PASSCRIAR1
if %cho%==SIM goto PASSCRIAR1
if %cho%==Nao goto END
if %cho%==nao goto END
if %cho%==NAO goto END
@ECHO OFF
COLOR FC
echo.
echo          Escolha entre as duas opcoes permitidas.
echo          ----------------------------------------
echo.
goto OPCAO


:MDLOCKER
md Pasta_Privada
@ECHO OFF
COLOR F2
echo.
echo.
echo     ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                                    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ  PASTA PRIVADA CRIADA COM SUCESSO  ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                                    ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo     ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo     ³                                                                               ³
echo     ³  COPIE OU MOVA TODOS OS FICHEIROS E/OU PASTAS QUE PRETENDE ESCONDER PARA A    ³
echo     ³  PASTA COM O NOME "PASTA_PRIVADA_" QUE ACABOU DE SER CRIADA NA MESMA          ³
echo     ³  LOCALIZACAO DESTE EXECUTAVEL.                                                ³
echo     ³          DEPOIS DE COPIAR OU MOVER TUDO, CORRA NOVAMENTE O PROGRAMA.          ³
echo     ³                                                                               ³
echo     ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ
goto COUNT


:LOCK
ren Pasta_Privada "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
@ECHO OFF
COLOR F2
echo.
echo      ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo      º                      PASTA PRIVADA PROTEGIDA COM SUCESSO                    º
echo      ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.
echo       ÚÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄ¿
echo       ³                                                                           ³
echo       ³ Para colocar a "Pasta_Privada_" visivel e desprotegida corra novamente o  ³
echo       ³ executavel e digite a sua password.                                       ³
echo       ³                                                                           ³
echo       ÀÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÙ                
goto COUNT



:UNLOCK
echo.
echo     ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                                                 ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ    INSIRA A PASSWORD PARA DESBLOQUEAR A PASTA   ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ                                                 ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ºÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛº
echo     ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.
echo       IMPORTANTE
echo.
echo       - Caso tenha perdido a sua Password tera de solicitar a Password de Seguranca.
echo       - Dispoem de apenas tres tentativas ate ser pedida a Password de Seguranca.
echo       - Case Sensitive! A sua password tem letras maiusculas e minusculas?
echo.

:PASSDESB1
set/p "pass=      Password: "
if NOT %pass%== teste goto FAILDESB1

attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
@ECHO OFF
COLOR F2
echo      ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo      º                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   º
echo      ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
goto COUNT

:FAILDESB1
@ECHO OFF
COLOR FC
echo.
echo          Password invalida. Repita por favor. ATENCAO! TEM MAIS DUAS TENTATIVAS.
echo.
@ECHO OFF
COLOR F0
goto PASSDESB2

:PASSDESB2
set/p "pass=      Password: "
if NOT %pass%== teste goto FAILDESB2
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
@ECHO OFF
COLOR F2
echo      ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo      º                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   º
echo      ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
@ECHO OFF
COLOR F2
goto COUNT

:FAILDESB2
@ECHO OFF
COLOR FC
echo.
echo          Password invalida. Repita por favor. ATENCAO! TEM MAIS UMA TENTATIVA.
echo.
@ECHO OFF
COLOR F0
goto PASSDESB3

:PASSDESB3
set/p "pass=      Password: "
if NOT %pass%== teste goto FAILDESBMASTER
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
@ECHO OFF
COLOR F2
echo      ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo      º                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   º
echo      ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
goto COUNT

:FAILDESBMASTER
@ECHO OFF
COLOR FC
echo.
echo          Password invalida. Insira por favor a Password de Seguranca.
echo.
@ECHO OFF
COLOR F0
goto FAILPASSSEG

:FAILPASSSEG
set/p "pass=      Password de Seguranca: "
if NOT %pass%== teste goto FAILDESBALL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Pasta_Privada
echo.
@ECHO OFF
COLOR F2
echo      ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo      º                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   º
echo      ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
goto COUNT

:FAILDESBALL
@ECHO OFF
COLOR FC
echo.
echo          ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo          ³ Solicite por email a Password de Seguranca para poder aceder a sua  ³
echo          ³ pasta privada. Sera enviada o mais rapidamente possivel.            ³
echo          ³                                                                     ³
echo          ³                 e-mail: carlossousa1987@hotmail.com                 ³
echo          ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.
Pause
goto end

:PASSCRIAR1
echo.
echo          Insira a Password para autenticar a sua opcao.
echo.
set/p "pass=      Password: "
if NOT %pass%== teste goto FAILCRIAR1
goto LOCK

:FAILCRIAR1
@ECHO OFF
COLOR FC
echo.
echo          Password invalida. Repita por favor. ATENCAO! TEM MAIS DUAS TENTATIVAS.
echo.
@ECHO OFF
COLOR F0
goto PASSCRIAR2

:PASSCRIAR2
echo.
echo          Insira a Password para autenticar a sua opcao.
echo.
set/p "pass=      Password: "
if NOT %pass%== teste goto FAILCRIAR2
goto LOCK

:FAILCRIAR2
@ECHO OFF
COLOR FC
echo.
echo          Password invalida. Repita por favor. ATENCAO! TEM MAIS UMA TENTATIVA.
echo.
@ECHO OFF
COLOR F0
goto PASSCRIAR3

:PASSCRIAR3
echo.
echo          Insira a Password para autenticar a sua opcao.
echo.
set/p "pass=      Password: "
if NOT %pass%== teste goto FAILCRIARALL
goto LOCK

:FAILCRIARALL
@ECHO OFF
COLOR FC
echo.
echo.
echo          ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo          ³  Solicite por email o seu Registo e a sua Password para poder usar  ³
echo          ³  este software com maior seguranca.                                 ³
echo          ³                                                                     ³
echo          ³                 e-mail: carlossousa1987@hotmail.com                 ³
echo          ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.
@ECHO OFF
Pause
goto end

:COUNT
echo                    ÉÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ»
echo                    º         OBRIGADO POR USAR O MEU SOFTWARE        º
echo                    º                 - ANDRE SOUSA -                 º
echo                    ÈÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍÍÍÍÍÍÍÍÍÍÍÍÍÍÍÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÄÍ¼
echo.
echo                             ESTA JANELA FECHA AUTOMATICAMENTE.
echo.
ping -n 2 127.0.0.1>nul
ping -n 2 127.0.0.1>nul
goto End
cls
:END
exit