#!/bin/bash
echo "拉取源代码"
git clone https://github.com/termux/termux-app
cd termux-app
#local_version=$(curl -s "http://api.funs.ml/lzy_dir/api.php?fdir=b0evif78j" |grep "Termux" |head -1 |awk -F "_" '{print $2}' |awk -F ".apk" '{print $1}')
remote_version=$(cat app/build.gradle |grep "versionName \"" |awk -F "\"" '{print $2}')
echo "已编译版本--$local_version"
echo "官方最新版本--$remote_version"
if [ "$local_version" == "$remote_version" ];then
      echo "无最新版本!"
	exit 1;
fi
##
str="app/src/main/res/values-zh-rCN/strings.xml"
str2="terminal-view/src/main/res/values-zh-rCN/strings.xml"
cp -r app/src/main/res/values app/src/main/res/values-zh-rCN
cp -r terminal-view/src/main/res/values terminal-view/src/main/res/values-zh-rCN

sed -i "s#↹#TAB#g" app/src/main/java/com/termux/app/ExtraKeysInfos.java
sed -i "s#ESC, TAB, CTRL, ALT, {key: '-', popup: '|'}, DOWN, UP#ESC, \/, -, HOME, UP, END, PGUP],[TAB, CTRL, ALT, LEFT, DOWN, RIGHT, PGDN#g" app/src/main/java/com/termux/app/TermuxPreferences.java

sed -i 's/Copy/复制/g' $str2
sed -i 's/Paste/粘贴/g' $str2
sed -i 's/More/更多/g' $str2

sed -i 's/Abort/中止/g' $str
sed -i 's/Termux can only be installed on the primary user account./Termux只能安装在主用户帐户./g' $str
sed -i 's/Termux was unable to install the bootstrap packages./Termux无法安装引导程序包./g' $str
sed -i 's/Check your network connection and try again./检查您的网络连接，然后再试一次./g' $str
sed -i 's/Unable to install/无法安装/g' $str
sed -i 's/Try again/再试一次/g' $str
sed -i 's/Installing…/安装中.../g' $str
sed -i 's/Really kill this session?/确定杀死这个会话吗？/g' $str
sed -i 's/Edit/编辑/g' $str
sed -i 's/Open folder/打开文件夹/g' $str
sed -i "s/Save file in ~\/downloads\//保存文件到 ~\/downloads\//g" $str
sed -i 's/Help/帮助/g' $str
sed -i 's/Kill process (%d)/杀死会话 (%d)/g' $str
sed -i 's/Close down existing ones before creating new./在创建新的之前关闭现有的./g' $str
sed -i 's/Max terminals reached/终端到达最大数量了/g' $str
sed -i 's/New session/新建会话/g' $str
sed -i 's/Failsafe/新建系统会话/g' $str
sed -i 's/Exit/退出/g' $str
sed -i 's/Acquire wakelock/开启唤醒锁/g' $str
sed -i 's/Release wakelock/关闭唤醒锁/g' $str
sed -i 's/Reset/重置/g' $str
sed -i 's/Terminal reset./重置终端/g' $str
sed -i 's/Share transcript/分享日志/g' $str
sed -i 's/Select URL/选择链接/g' $str
sed -i 's/URL copied to clipboard/URL复制到剪贴板/g' $str
sed -i 's/Click URL to copy or long press to open/点击链接复制或长按打开/g' $str
sed -i 's/No URL found in the terminal./在终端中找不到URL。/g' $str
sed -i 's/Create/创建/g' $str
sed -i 's/New named session/新命名的会话/g' $str
sed -i 's/Set session name/设置会话名/g' $str
sed -i 's/Set/设置/g' $str
sed -i 's/Send text to:/发送文本至:/g' $str
sed -i 's/Terminal transcript/终端日志/g' $str
sed -i 's/Termux user/Termux用户/g' $str
sed -i 's/Install/安装/g' $str
sed -i 's/The Termux:Style add-on is not installed./Termux:Style插件没有安装./g' $str
sed -i 's/Style/风格/g' $str
sed -i 's/Keep screen on/保持屏幕/g' $str
sed -i 's/Keyboard/键盘/g' $str

printf "修改完成\n"
##
printf "开始编译\n"
./gradlew assembleDebug
cp app/build/outputs/apk/debug/app-debug.apk ./Termux_${remote_version}.apk
echo "结束"
