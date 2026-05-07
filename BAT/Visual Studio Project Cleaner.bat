set BIN_DIR=bin
set OBJ_DIR=obj
set GIT_DIR=.git
set VS_DIR=.vs

for /d /r %%i in (%BIN_DIR%) do if exist "%%i" rd /s /q "%%i"
for /d /r %%i in (%OBJ_DIR%) do if exist "%%i" rd /s /q "%%i"
for /d /r %%i in (%GIT_DIR%) do if exist "%%i" rd /s /q "%%i"
for /d /r %%i in (%VS_DIR%) do if exist "%%i" rd /s /q "%%i"