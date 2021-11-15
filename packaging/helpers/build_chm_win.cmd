@echo off

rem
rem SPDX-FileCopyrightText: 2011-2021 EasyCoding Team
rem
rem SPDX-License-Identifier: GPL-3.0-or-later
rem

title CHM builder for Micro Hosts Editor

echo Building offline help for default (EN) locale...
call "..\..\docs\make.cmd" htmlhelp
"%ProgramFiles(x86)%\HTML Help Workshop\hhc.exe" "..\..\docs\build\htmlhelp\mhed_en.hhp"
move "..\..\docs\build\htmlhelp\mhed_en.chm" "..\..\src\mhed\bin\Release\help\mhed_en.chm"

echo Building offline help for RU locale...
set SPHINXOPTS=-D language=ru
set BUILDLANG=ru
call "..\..\docs\make.cmd" htmlhelp
"%ProgramFiles(x86)%\HTML Help Workshop\hhc.exe" "..\..\docs\build\htmlhelp\mhed_ru.hhp"
move "..\..\docs\build\htmlhelp\mhed_ru.chm" "..\..\src\mhed\bin\Release\help\mhed_ru.chm"
