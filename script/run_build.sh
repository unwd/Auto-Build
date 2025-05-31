#!/bin/bash
APP_NAME=$1

if [ $APP_NAME == "termux_app" ]; then 

remote_version=$(curl -s "https://api.github.com/repos/termux/termux-app/releases" |jq -r .[0].'tag_name')

else 

remote_version=$(cat ${APP_NAME}/app/build.gradle |grep "versionName \"" |awk -F "\"" '{print $2}')

fi 

local_version=$(cat version.json |jq -r .${APP_NAME})
echo "本地版本--$local_version"
echo "最新版本--$remote_version"

if [ "$local_version" == "$remote_version" ];then
  printf "无最新版本!\n\n"
  exit 1;
fi

#翻译
cd ${APP_NAME}

if [ ! -z "$2" ]; then
  echo "加载脚本: $2"
  source "../script/$2"
fi

printf "开始编译\n"
./gradlew assembleDebug

if [ $APP_NAME == "termux_app" ]; then 
cp app/build/outputs/apk/debug/*arm64-v8a.apk ../${APP_NAME}_${remote_version}.apk
else
cp app/build/outputs/apk/debug/*debug.apk ../${APP_NAME}_${remote_version}.apk
fi
echo "编译结束"


echo "更新本地版本号"
cd ../

jq ".${APP_NAME} = \"${remote_version}\"" version.json > temp.json && mv temp.json version.json

git config --global user.email "zfuns@qq.com"
git config --global user.name "zfuns"
git add version.json
git commit -m "update version.json"
git push
