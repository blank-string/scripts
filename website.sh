cd ../blank-string

npm whoami || npm login


cd blankstring.com
npm i -S @blank-string/data@latest @blank-string/rss@latest @blank-string/media@latest

echo "Where is the new image located?"
read image
while [ ! -f $image ]
do
    echo "$image not found!"
    echo "Where is the new image located?"
    read image
done
cp $image ./public/static/media
git add -A
git commit -m 'next episode'
git push
npm run deploy
cd ..
