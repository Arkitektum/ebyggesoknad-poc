@echo off
del /s disk1\nabovarsel.cab disk1\nabovarsel.xsn
makecab /d "CabinetName1=nabovarsel.cab" /f files.txt
ren disk1\nabovarsel.cab nabovarsel.xsn