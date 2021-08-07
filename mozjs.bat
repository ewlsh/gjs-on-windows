cd C:\

git clone https://github.com/ptomato/mozjs

curl -s https://ftp.mozilla.org/pub/mozilla.org/mozilla/libraries/win32/MozillaBuildSetup-Latest.exe -o C:\MozillaBuildSetup-Latest.exe

MozillaBuildSetup-Latest.exe /S /D=C:\\mozilla-build

echo "ac_add_options --enable-nspr-build\r\n">C:\mozconfigs\win32
echo.>>C:\mozconfigs\win32
echo.>>C:\mozconfigs\win32
echo "ac_add_options --disable-jemalloc">>C:\mozconfigs\win32

C:\mozilla-build\start-shell.bat

cd mozjs

export MOZCONFIG=C:\mozconfigs\win32
export JS_STANDALONE=1

./mach build

