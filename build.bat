@echo off
echo === PORTFOLIO BUILD SCRIPT (Windows) ===
echo Node version:
node --version
echo NPM version:
npm --version

REM Check if we're in the right directory
if not exist "package.json" (
    echo ERROR: package.json not found!
    exit /b 1
)

REM Install dependencies
echo Installing dependencies...
npm ci || npm install

REM Try multiple build approaches
echo Attempting to build...

REM Method 1: npx vite build
echo Method 1: Using npx vite build
npx vite build
if %errorlevel% == 0 (
    echo ✅ Build successful with npx vite build
    exit /b 0
)

REM Method 2: npm run build
echo Method 2: Using npm run build
npm run build
if %errorlevel% == 0 (
    echo ✅ Build successful with npm run build
    exit /b 0
)

REM Method 3: Direct node_modules access
echo Method 3: Using direct node_modules access
.\node_modules\.bin\vite.cmd build
if %errorlevel% == 0 (
    echo ✅ Build successful with direct vite
    exit /b 0
)

echo ❌ All build methods failed!
exit /b 1