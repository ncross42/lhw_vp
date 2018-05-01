#!/usr/bin/env sh

# abort on errors
set -e

# build
vuepress build
# npm run docs:build


# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git remote add origin https://github.com/ncross42/ncross42.github.io.git
git push -u origin master
#git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
#git push -f git@github.com:ncross42/lhw_vp.git master:gh-pages

cd -
