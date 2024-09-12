#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build:win

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
#  echo 'doc.frontdoc.cn' > CNAME

git init
git add -A
git commit -m 'deploy'
git push -f https://github.com/LiPanFQ/eLinks_Doc.git master:gh-pages
cd -