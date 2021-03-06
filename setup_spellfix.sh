#!/usr/bin/env sh
pip install https://github.com/rogerbinns/apsw/releases/download/3.14.1-r1/apsw-3.14.1-r1.zip --global-option=fetch --global-option=--version --global-option=3.14.1 --global-option=--all --global-option=build --global-option=--enable-all-extensions
curl http://sqlite.org/cgi/src/raw/ext/misc/spellfix.c?name=a4723b6aff748a417b5091b68a46443265c40f0d -o spellfix.c
curl http://sqlite.org/cgi/src/raw/src/sqlite3ext.h?name=8648034aa702469afb553231677306cc6492a1ae -o sqlite3ext.h
curl http://sqlite.org/cgi/src/raw/src/sqlite.h.in?name=2683a291ed8db5228024267be6421f0de507b80e -o sqlite3.h
gcc -fPIC -shared spellfix.c -o spellfix.so