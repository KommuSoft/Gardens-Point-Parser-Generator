REM generate a fresh copy of Parser.cs
..\bootstrap\gppg /gplex /nolines gppg.y
if not exist Parser.cs goto error
move Parser.cs ..\ParserGenerator

REM generate a fresh copy of Scanner.cs (and GplexBuffers.cs - intermediate version)
..\bootstrap\gplex gppg.lex
if not exist Scanner.cs goto error
move Scanner.cs ..\ParserGenerator

REM generate a fresh copy of ScanAction.cs and GplexBuffers.cs (final version)
..\bootstrap\gplex ScanAction.lex
if not exist ScanAction.cs goto error
move ScanAction.cs ..\ParserGenerator
if not exist GplexBuffers.cs goto error
move GplexBuffers.cs ..\ParserGenerator
goto success

REM Handle errors
:error
pause

REM Handle success
:success