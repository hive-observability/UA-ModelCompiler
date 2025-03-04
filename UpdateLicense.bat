@ECHO off
SETLOCAL

set MODELCOMPILER=.\build\bin\Release\net5.0\Opc.Ua.ModelCompiler.exe
set OUTPUT=%1

"%MODELCOMPILER%" -input %OUTPUT% -pattern *.xml -license MITXML -silent
"%MODELCOMPILER%" -input %OUTPUT% -pattern *.xsd -license MITXML -silent
"%MODELCOMPILER%" -input %OUTPUT% -pattern *.bsd -license MITXML -silent
"%MODELCOMPILER%" -input %OUTPUT% -pattern *.cs -license MIT -silent
"%MODELCOMPILER%" -input %OUTPUT% -pattern *.h -license MIT -silent
"%MODELCOMPILER%" -input %OUTPUT% -pattern *.c -license MIT -silent

:theEnd
ENDLOCAL