@echo off
setlocal

:: Check if it's a Git repo
if not exist ".git" (
    echo ⚠️ This is not a Git repository.
    exit /b 1
)

:: Get current branch name
for /f %%i in ('git rev-parse --abbrev-ref HEAD') do set "CURRENT_BRANCH=%%i"

echo 🔄 Backing up current branch to backup-%CURRENT_BRANCH%
git branch backup-%CURRENT_BRANCH%

echo 🚧 Creating orphan branch...
git checkout --orphan temp-branch

echo 🔍 Staging files...
git add -A

echo 📝 Committing latest snapshot...
git commit -m "Initial commit (preserving latest state only)"

echo ❌ Deleting old branch: %CURRENT_BRANCH%
git branch -D %CURRENT_BRANCH%

echo 🔁 Renaming new branch to: %CURRENT_BRANCH%
git branch -m %CURRENT_BRANCH%

echo ☁️ Force pushing to origin...
git push origin %CURRENT_BRANCH% --force

echo ✅ Done! Only the latest commit is preserved.
echo 🛑 Original branch saved locally as backup-%CURRENT_BRANCH%.

endlocal
pause
