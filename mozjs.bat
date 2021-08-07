cd C:\

git clone https://github.com/ptomato/mozjs

curl -s https://ftp.mozilla.org/pub/mozilla.org/mozilla/libraries/win32/MozillaBuildSetup-Latest.exe -o MozillaBuildSetup-Latest.exe

MozillaBuildSetup-Latest.exe /S /D=D:\a\gjs-on-windows\gjs-on-windows\mozilla-build

echo "ac_add_options --enable-nspr-build">D:\a\gjs-on-windows\gjs-on-windows\mozconfigs\win32
echo.>>D:\a\gjs-on-windows\gjs-on-windows\mozconfigs\win32
echo.>>D:\a\gjs-on-windows\gjs-on-windows\mozconfigs\win32
echo "ac_add_options --disable-jemalloc">>D:\a\gjs-on-windows\gjs-on-windows\mozconfigs\win32

D:\a\gjs-on-windows\gjs-on-windows\mozilla-build\start-shell.bat

cd mozjs

export MOZCONFIG=D:\a\gjs-on-windows\gjs-on-windows\mozconfigs\win32
export JS_STANDALONE=1

./mach build

