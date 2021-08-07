git clone https://github.com/mozilla/gecko-dev/ --depth 1 -b esr78 --single-branch mozilla-esr78

cd mozilla-esr78

export MOZCONFIG="D:\a\gjs-on-windows\gjs-on-windows\mozconfig-win32"
export JS_STANDALONE=1

./mach build

