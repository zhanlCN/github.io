#!/usr/bin/env sh
###
 # @Descripttion: 
 # @version: 3.3
 # @Author: zhanl
 # @Date: 2021-06-11 10:59:39
 # @LastEditors: zhanl
 # @LastEditTime: 2021-06-11 11:18:03
### 

#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:7revor/7revor.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

# 如果使用 travis 持续集成
git push -f https://${access_token}@github.com/7revor/docs.git master:gh-pages

cd -
