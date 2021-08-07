cd C:\

curl -s https://ftp.mozilla.org/pub/mozilla.org/mozilla/libraries/win32/MozillaBuildSetup-Latest.exe -o MozillaBuildSetup-Latest.exe

MozillaBuildSetup-Latest.exe /S

echo "ac_add_options --enable-nspr-build">D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
echo.>>D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
echo.>>D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
echo "ac_add_options --disable-jemalloc">>D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32
