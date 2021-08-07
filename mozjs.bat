cd C:\

git clone https://github.com/ptomato/mozjs

curl -s https://ftp.mozilla.org/pub/mozilla.org/mozilla/libraries/win32/MozillaBuildSetup-Latest.exe -o MozillaBuildSetup-Latest.exe

MozillaBuildSetup-Latest.exe /S

echo "ac_add_options --enable-nspr-build">D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
echo.>>D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
echo.>>D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
echo "ac_add_options --disable-jemalloc">>D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32

C:\mozilla-build\start-shell.bat

cd mozjs

SET MOZCONFIG=D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
SET JS_STANDALONE=1

./mach build

