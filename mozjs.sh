git clone https://github.com/ptomato/mozjs -b mozjs78 --single-branch --depth 1 mozjs-78

cd mozjs-78

export JS_STANDALONE=1

cd js/src
mkdir _build
cd _build
../configure --enable-nspr-build --disable-js-shell --host=x86_64-pc-mingw32 --target=x86_64-pc-mingw32 \
    --disable-jemalloc --with-intl-api --enable-debug --enable-optimize --prefix="./mozjs78"
mozmake
mozmake install

