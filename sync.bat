@echo off
setlocal EnableDelayedExpansion

echo 🔄 Syncing changes with GitHub...

:: Prompt for commit message
set /p commitMessage=Enter commit message: 

:: Run Git commands
git add .
git commit -m "!commitMessage!"
git push

echo ✅ Sync complete.
pause
