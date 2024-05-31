@ECHO OFF
cls
@ECHO OFF
COLOR F0
MODE 89,43
TITLE PASTAS PRIVADAS v1.2 scripted by Andre Sousa @ 18/09/2009 - VERSAO DE TESTE PEOPLEWARE
echo.
echo      �����������������������������������������������������������������������������ͻ
echo      �                                                                             �
echo      �                             PASTAS PRIVADAS v1.2                            �
echo      �                                                                             �
echo      �����������������������������������������������������������������������������ͼ
echo     �������������������������������������������������������������������������������Ŀ
echo     �                                                                               �
echo     � Este programa permite criar uma pasta denominada "Pasta_Privada_" e oculta-la �
echo     � de terceiros estando apenas acessivel inserindo a respectiva Password.        �
echo     �                                                                               �
echo     � COMO UTILIZAR:                                                                �
echo     �                                                                               �
echo     �  1 - Copiar este executavel para a pasta onde tem os arquivos a ocultar.      �
echo     �  2 - Clicar no executavel e seguir as instrucoes.                             �
echo     �  3 - Sera criada uma sub-pasta na pasta de origem com o nome "Pasta_Privada_".�
echo     �  4 - Mova todos os ficheiros que pretende ocultar para essa pasta.            �
echo     �  5 - Corra novamente o executavel e responda afirmativamente a                �
echo     �      questao apresentada.                                                     �
echo     �  6 - Ja esta. A SUA PASTA PRIVADA ESTA ESCONDIDA E PROTEGIDA.                 �
echo     �                                                                               �
echo     � !ATENCAO! Nao deve nunca mudar o nome da pasta senao o programa nao funciona. �
echo     �           Pode mudar o nome do executavel para o nome que quiser.             �
echo     �           Pode ser usado diversas vezes desde que copiado para a pasta        �
echo     �           escolhida e renomeado.                                              �
echo     �                                                                               �
echo     � Para voltar a aceder a "Pasta_Privada_" basta correr o executavel, inserir a  �
echo     � Password e a pasta ficara visivel e desprotegida.                             �
echo     �                                                                               �
echo     ���������������������������������������������������������������������������������
echo      �����������������������������������������������������������������������������ͻ
echo      �                               SOFTWARE LIVRE                                �
echo      �����������������������������������������������������������������������������ͼ
echo         �����������������������������������������������������������������������ͻ
echo         �                         PASSWORD CRIADA PARA                          �
echo         �                          CARLOS ANDRE SOUSA                           �
echo         �                           DESDE 15/09/2009                            �
echo         �                             USO PESSOAL                               �
echo         �                      CARLOSSOUSA1987@HOTMAIL.COM                      �
echo         �����������������������������������������������������������������������ͼ
echo.
PAUSE
CLS
GOTO INICIO







:INICIO
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Pasta_Privada goto MDLOCKER
:CONFIRMAR
echo.
echo     �������������������������������������������������������������������������������ͻ
echo     �������������������������������������������������������������������������������ۺ
echo     ����������������                                                 ��������������ۺ
echo     ����������������   PRETENDE TORNAR A PASTA OCULTA E PROTEGIDA?   ��������������ۺ
echo     ����������������                                                 ��������������ۺ
echo     �������������������������������������������������������������������������������ۺ
echo     �������������������������������������������������������������������������������ͼ
echo.
echo          ���������������������������������������������������������������������ͻ
echo          � OPCOES                                                              �
echo          �                                                                     �
echo          � SIM - Oculta a "Pasta_Privada_" e todos os ficheiros nela contidos. �
echo          � NAO - Mantem a "Pasta_Privada_" visivel e sai do programa.          �
echo          ���������������������������������������������������������������������ͼ
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
echo     �������������������������������������������������������������������������������ͻ
echo     �������������������������������������������������������������������������������ۺ
echo     �������������������������������������������������������������������������������ۺ
echo     ������������������������                                    �������������������ۺ
echo     ������������������������  PASTA PRIVADA CRIADA COM SUCESSO  �������������������ۺ
echo     ������������������������                                    �������������������ۺ
echo     �������������������������������������������������������������������������������ۺ
echo     �������������������������������������������������������������������������������ۺ
echo     �������������������������������������������������������������������������������ͼ
echo     �������������������������������������������������������������������������������Ŀ
echo     �                                                                               �
echo     �  COPIE OU MOVA TODOS OS FICHEIROS E/OU PASTAS QUE PRETENDE ESCONDER PARA A    �
echo     �  PASTA COM O NOME "PASTA_PRIVADA_" QUE ACABOU DE SER CRIADA NA MESMA          �
echo     �  LOCALIZACAO DESTE EXECUTAVEL.                                                �
echo     �          DEPOIS DE COPIAR OU MOVER TUDO, CORRA NOVAMENTE O PROGRAMA.          �
echo     �                                                                               �
echo     ���������������������������������������������������������������������������������
goto COUNT


:LOCK
ren Pasta_Privada "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
@ECHO OFF
COLOR F2
echo.
echo      �����������������������������������������������������������������������������ͻ
echo      �                      PASTA PRIVADA PROTEGIDA COM SUCESSO                    �
echo      �����������������������������������������������������������������������������ͼ
echo.
echo       ���������������������������������������������������������������������������Ŀ
echo       �                                                                           �
echo       � Para colocar a "Pasta_Privada_" visivel e desprotegida corra novamente o  �
echo       � executavel e digite a sua password.                                       �
echo       �                                                                           �
echo       �����������������������������������������������������������������������������                
goto COUNT



:UNLOCK
echo.
echo     �������������������������������������������������������������������������������ͻ
echo     �������������������������������������������������������������������������������ۺ
echo     ����������������                                                 ��������������ۺ
echo     ����������������    INSIRA A PASSWORD PARA DESBLOQUEAR A PASTA   ��������������ۺ
echo     ����������������                                                 ��������������ۺ
echo     �������������������������������������������������������������������������������ۺ
echo     �������������������������������������������������������������������������������ͼ
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
echo      �����������������������������������������������������������������������������ͻ
echo      �                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   �
echo      �����������������������������������������������������������������������������ͼ
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
echo      �����������������������������������������������������������������������������ͻ
echo      �                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   �
echo      �����������������������������������������������������������������������������ͼ
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
echo      �����������������������������������������������������������������������������ͻ
echo      �                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   �
echo      �����������������������������������������������������������������������������ͼ
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
echo      �����������������������������������������������������������������������������ͻ
echo      �                    PASTA PRIVADA DESBLOQUEADA COM SUCESSO                   �
echo      �����������������������������������������������������������������������������ͼ
goto COUNT

:FAILDESBALL
@ECHO OFF
COLOR FC
echo.
echo          ���������������������������������������������������������������������ͻ
echo          � Solicite por email a Password de Seguranca para poder aceder a sua  �
echo          � pasta privada. Sera enviada o mais rapidamente possivel.            �
echo          �                                                                     �
echo          �                 e-mail: carlossousa1987@hotmail.com                 �
echo          ���������������������������������������������������������������������ͼ
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
echo          ���������������������������������������������������������������������ͻ
echo          �  Solicite por email o seu Registo e a sua Password para poder usar  �
echo          �  este software com maior seguranca.                                 �
echo          �                                                                     �
echo          �                 e-mail: carlossousa1987@hotmail.com                 �
echo          ���������������������������������������������������������������������ͼ
echo.
@ECHO OFF
Pause
goto end

:COUNT
echo                    �������������������������������������������������ͻ
echo                    �         OBRIGADO POR USAR O MEU SOFTWARE        �
echo                    �                 - ANDRE SOUSA -                 �
echo                    �������������������������������������������������ͼ
echo.
echo                             ESTA JANELA FECHA AUTOMATICAMENTE.
echo.
ping -n 2 127.0.0.1>nul
ping -n 2 127.0.0.1>nul
goto End
cls
:END
exit