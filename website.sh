cd ../blank-string

npm whoami || npm login


cd blankstring.com
npm i -S @blank-string/data@latest @blank-string/rss@latest @blank-string/media@latest

git add -A
git commit -m 'next episode'
git push
npm run deploy
cd ..
