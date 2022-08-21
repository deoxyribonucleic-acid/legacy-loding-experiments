@echo off
setlocal enabledelayedexpansion

set inPath=d:\matlab\result\BPG_QP50\out1024\
set outPath=d:\matlab\bpg_dec\QP50\1024\
if not exist %outPath% (mkdir %outPath%)
for %%i in (%inPath%*.*) do (set old=%%i
	set out=%outPath%%%~ni.png
	bpgdec -i !old!
	bpgdec -o !out! !old!
)