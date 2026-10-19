@echo off
rem Mo trang bang Microsoft Edge voi che do cho phep tu phat nhac (khong can bam gi)
set "URL=file:///E:/2010/index.html"
set "EDGE=%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe"
if not exist "%EDGE%" set "EDGE=%ProgramFiles%\Microsoft\Edge\Application\msedge.exe"
if exist "%EDGE%" (
  start "" "%EDGE%" --user-data-dir="%TEMP%\trang2010-edge" --autoplay-policy=no-user-gesture-required --no-first-run --start-maximized "%URL%"
) else if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --user-data-dir="%TEMP%\trang2010-chrome" --autoplay-policy=no-user-gesture-required --no-first-run "%URL%"
) else (
  start "" "%URL%"
)
