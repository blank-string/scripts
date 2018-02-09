cd ..
mkdir ../blank-string
cd blank-string

git clone --depth 1 git@github.com:blank-string/blank-string.github.io.git blankstring.com
git clone --depth 1 git@github.com:blank-string/data.git
git clone --depth 1 git@github.com:blank-string/rss.git
git clone --depth 1 git@github.com:blank-string/media.git

echo installing data
cd data
npm i
cd -

echo installing rss
cd rss
npm i
cd -

echo installing media
cd media
npm i
cd -

echo installing blankstring.com
cd blankstring.com
npm i
cd -
