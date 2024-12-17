:: Script para criaçao de sub-diretorios padroes que uso

@echo off
setlocal enabledelayedexpansion

:: Solicita o caminho do diretorio desejado
echo *** Digite o caminho do diretorio: ***
set /p dirPath= Path: 

:: Verifica se o diretorio existe
if not exist "%dirPath%" (
    echo O diretorio especificado nao existe.
    pause
    exit /b
)

:: variavel para os nomes dos sub-diretorios
set folders= src database test documents

:: Percorre e verifica cada nome de diretorio
for %%f in (%folders%) do (
    if not exist "%dirPath%\%%f" (
        echo .
        echo Criando o sub-diretorio %%f no diretorio %dirPath%.
        mkdir "%dirPath%\%%f"

    ) else (
        echo .
        echo O sub-diretorio %%f ja existe no diretorio %dirPath%.
    )
)
echo --------
echo Processo concluido!
pause

:: Feito por AluanLuiz