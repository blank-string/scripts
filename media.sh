cd ../blank-string

npm whoami || npm login

cd media
echo "Where is the new mp3 located?"
read mp3
while [ ! -f $mp3 ]
do
    echo "$mp3 not found!"
    echo "Where is the new mp3 located?"
    read mp3
done
mkdir -p media
cp $mp3 ./media

npm i -S @blank-string/data@latest
git add -A
git commit -m 'next episode'
npm version patch
git push
git push --tags
npm publish
npm run deploy

cd ..