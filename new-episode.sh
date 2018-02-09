cd ../blank-string

npm whoami || npm login

cd data
npm run new

if [ $? -eq 0 ]; then
    npm run build
    git add -A
    git commit -m 'next episode'
    npm version major
    git push
    git push --tags
    npm publish
    cd ..
fi

