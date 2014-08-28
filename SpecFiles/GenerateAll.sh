BOOTSTRAP=../bootstrap
SOURCEDIR=../ParserGenerator

mono $BOOTSTRAP/gppg.exe /gplex /nolines gppg.y
mv Parser.cs $SOURCEDIR/

mono $BOOTSTRAP/gplex.exe gppg.lex
mv Scanner.cs $SOURCEDIR/

mono $BOOTSTRAP/gplex.exe ScanAction.lex
mv ScanAction.cs $SOURCEDIR/
mv GplexBuffers.cs $SOURCEDIR/
