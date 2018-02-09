cd ../blank-string

npm whoami || npm login

cd rss
npm i -S @blank-string/data@latest
git add -A
git commit -m 'next episode'
npm version patch
git push
git push --tags
npm publish
cd ..
