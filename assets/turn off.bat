@echo off
plink sshd@<inser ip here> -pw <insert password here> halt
echo The server will shutdown in 60 seconds
echo.
PAUSE