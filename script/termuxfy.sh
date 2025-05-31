rep(){ sed -i -z "s/>$1</>$2</g" $3 ;}
rep2(){ sed -i "s/$1/$2/g" $3 ;}
str="app/src/main/res/values-zh-rCN/strings.xml"
str2="terminal-view/src/main/res/values-zh-rCN/strings.xml"
mkdir -p app/src/main/res/values-zh-rCN
cp -r app/src/main/res/values/strings.xml $str
mkdir -p terminal-view/src/main/res/values-zh-rCN
cp -r terminal-view/src/main/res/values/strings.xml $str2
rep2 "↹" "TAB" termux-shared/src/main/java/com/termux/shared/termux/extrakeys/ExtraKeysConstants.java
rep2 "ESC, TAB, CTRL, ALT, {key: '-', popup: '|'}, DOWN, UP" "ESC, {key: '-', popup: '|'}, {key: '\/', popup: '\\\\\\\\\\\\\\\\'}, HOME, UP, END, PGUP],[TAB, CTRL, ALT, LEFT, DOWN, RIGHT, PGDN" termux-shared/src/main/java/com/termux/shared/termux/settings/properties/TermuxPropertyConstants.java
rep "Copy" "复制" $str2
rep "Paste" "粘贴" $str2
rep "More…" "更多…" $str2
rep "Termux can only be installed on the primary user account." "Termux只能安装在主用户帐户." $str
rep "Termux was unable to install the bootstrap packages." "Termux无法安装引导程序包." $str
rep "Check your network connection and try again." "检查您的网络连接，然后再试一次." $str
rep "&TERMUX_APP_NAME; user" "\&TERMUX_APP_NAME; 用户" $str
rep "Installing bootstrap packages…" "安装引导程序包..." $str
rep "Abort" "中止" $str
rep "Try again" "再试一次" $str

rep "&TERMUX_APP_NAME; Bootstrap Error" "\&TERMUX_APP_NAME; 引导错误" $str
rep "&TERMUX_APP_NAME; was unable to install the bootstrap packages." "\&TERMUX_APP_NAME; 无法安装引导程序包." $str

rep "Unable to install" "无法安装" $str
rep "Installing…" "安装中..." $str
rep "Really kill this session?" "确定杀死这个会话吗？" $str
rep "Edit" "编辑" $str
rep "Open directory" "打开文件夹" $str
rep "Save file in ~\/downloads\/" "保存文件到 ~\/downloads\/" $str
rep "Help" "帮助" $str
rep "Autofill username" "自动填充用户名" $str
rep "Autofill password" "自动填充密码" $str
rep "Kill process (%d)" "杀死会话 (%d)" $str

#
rep "New session" "新建会话" $str
rep "Failsafe" "新建系统会话" $str
rep "Max terminals reached" "终端到达最大数量了" $str
rep "Close down existing ones before creating new." "在创建新 的之前关闭现有的." $str

rep "Set session name" "设置会话名" $str
rep "New named session" "新命名的会话" $str
rep "Create" "创建" $str
rep "Set" "设置" $str

rep "Enabling Terminal Toolbar" "启用终端工具栏" $str
rep "Disabling Terminal Toolbar" "禁用终端工具栏" $str

#
rep "Exit" "退出" $str
rep "Acquire wakelock" "开启唤醒锁" $str
rep "Release wakelock" "关闭唤醒锁" $str
rep "Reset" "重置" $str
rep "Terminal reset." "重置终端<" $str
rep "Share transcript" "分享日志" $str
rep "Share selected text" "分享选中文本" $str
rep "Send selected text to:" "发送选中文本至:" $str
rep "Terminal Text" "终端文本" $str
rep "Send transcript to:" "发送日志至:" $str
rep "Select URL" "选择链接" $str
rep "URL copied to clipboard" "URL复制到剪贴板" $str
rep "Click URL to copy or long press to open" "点击链接复制或 长按打开" $str
rep "No URL found in the terminal." "在终端中找不到URL。" $str
rep "Settings" "设置" $str
rep "Send text to:" "发送文本至:" $str
rep "Terminal transcript" "终端日志" $str
rep "Install" "安装" $str
rep "The &TERMUX_STYLING_APP_NAME; Plugin App is not installed." "\&TERMUX_STYLING_APP_NAME; 插件没有安装." $str
rep "Style" "风格" $str
rep "Keep screen on" "保持屏幕常亮" $str

rep "Report Issue" "报告问题" $str
rep "Generating Report" "生成报告" $str
rep "Add termux debug info to report?" "添加termux调试信息到报告?" $str

rep "Run commands in &TERMUX_APP_NAME; environment" "在\&TERMUX_APP_NAME;环境中运行命令" $str
rep "execute arbitrary commands within &TERMUX_APP_NAME;\n\s*environment and access files" "在\&TERMUX_APP_NAME;环境中执行任意命令并访问文件" $str

rep "The APK bootstrap variant %1\$s\n\s*of currently installed &TERMUX_APP_NAME; app is not compatible with the Android version %2\$s\n\s*(sdk \`%3\$d\`) of the device and it requires minimum Android version %4\$s (sdk \`%5\$d\`).\n\s*\\\n\\\nUninstall the &TERMUX_APP_NAME; app and reinstall the correct APK build variant." "当前安装的\&TERMUX_APP_NAME;应用的APK引导变体%1\$s与设备的Android版本%2\$s\n(sdk \`%3\$d\`)不兼容，它需要最小的Android版本%4\$s (sdk \`%5\$d\`).\n卸载\&TERMUX_APP_NAME;应用并重新安装正确的APK构建变体." $str

rep "The APK bootstrap variant %1\$s\n\s*of currently installed &TERMUX_APP_NAME; app is not compatible with the Android version %2\$s\n\s*(sdk \`%3\$d\`) of the device and it requires maximum Android version %4\$s (sdk \`%5\$d\`).\n\s*\\\n\\\nUninstall the &TERMUX_APP_NAME; app and reinstall the correct APK build variant." "当前安装的\&TERMUX_APP_NAME;应用的APK引导变体%1\$s与设备的Android版本%2\$s\n(sdk \`%3\$d\`)不兼容，它需要最大的Android版本%4\$s (sdk \`%5\$d\`).\n卸载\&TERMUX_APP_NAME;应用并重新安装正确的APK构建变体." $str

rep "&TERMUX_APP_NAME; can only be run as the primary user.\n\s*\\\nBootstrap binaries compiled for &TERMUX_APP_NAME; have hardcoded \$PREFIX path and cannot be installed\n\s*under any path other than:\\\n%1\$s." "\&TERMUX_APP_NAME; 只能作为主用户运行.\n为\&TERMUX_APP_NAME;编译的引导二进制文件具有硬编码的\$PREFIX路径，不能安装在除以下路径之外的任何路径下:\\n%1\$s." $str

rep "&TERMUX_APP_NAME; cannot be installed on\n\s*portable\/external\/removable sd card on your device.\n\s*\\\nBootstrap binaries compiled for &TERMUX_APP_NAME; have hardcoded \$PREFIX path and cannot be installed\n\s*under any path other than:\\\n%1\$s." "\&TERMUX_APP_NAME; 不能安装在您的设备上的便携式\/外部\/可 移动sd卡上.\n为\&TERMUX_APP_NAME;编译的引导二进制文件具有硬编码的\$PREFIX路径，不能安装在除以下 路径之外的任何路径下:\\n%1\$s." $str


rep "&TERMUX_APP_NAME; requires\n\s*\\\\\"Display over other apps\\\\\" permission to start terminal sessions from background on Android >= 10.\n\s*Grants it from Settings -> Apps -> &TERMUX_APP_NAME; -> Advanced" "\&TERMUX_APP_NAME;  需要\n\\\"在其他应用上显示\\\" 权限在Android >= 10上从后台启动终端会话.\n从设置 -> 应用 -> \&TERMUX_APP_NAME; -> 高级中授予" $str
rep "Invalid execution command runner to TermuxService: \`%1\$s\`" "无效 的执行命令运行器到TermuxService: \`%1\$s\`" $str
rep "Unsupported execution command runner to TermuxService: \`%1\$s\`" " 不支持的执行命令运行器到TermuxService: \`%1\$s\`" $str
rep "Unsupported execution command shell create mode to TermuxService: \`%1\$s\`" "不支持的执行命令shell创建模式到TermuxService: \`%1\$s\`" $str
rep "Shell name not set but \`%1\$s\` shell create mode passed" "Shell名 称未设置但传递了\`%1\$s\` shell创建模式" $str


rep "Invalid intent action to RunCommandService: \`%1\$s\`" " 无效的意图操作到RunCommandService: \`%1\$s\`" $str
rep "Invalid execution command runner to RunCommandService: \`%1\$s\`" " 无效的执行命令运行器到RunCommandService: \`%1\$s\`" $str
rep "Mandatory extra missing to RunCommandService: \"%1\$s\"" "必要的额外缺失到RunCommandService: \"%1\$s\"" $str
rep "Visit %1\$s for more info on RUN_COMMAND Intent usage." "访问 %1\$s 获取更多关于RUN_COMMAND意图使用的信息." $str

rep "Failed to start TermuxService. Check logcat for exception message." "无法启动TermuxService。检查logcat以获取异常消息。" $str
rep "Failed to start TermuxService while app is in background due to android bg restrictions." "由于Android后台限制，应用在后台时无 法启动TermuxService。" $str

rep "&TERMUX_APP_NAME; Settings" "\&TERMUX_APP_NAME; 设置" $str
rep "Preferences for &TERMUX_APP_NAME; app" "\&TERMUX_APP_NAME; 应用首选 项" $str


rep "Debugging" "调试" $str
rep "Preferences for debugging" "调试首选项" $str
rep "Logging" "日志" $str
rep "Log Level" "日志级别" $str
rep "Terminal View Key Logging" "终端视图键日志" $str
rep "Logs will not have entries for terminal view keys. (Default)" "日志 不会有终端视图键的条目.(默认)" $str
rep "Logcat logs will have entries for terminal view keys.\n\s*These are very verbose and should be disabled under normal circumstances or will cause performance issues." "Logcat日志将有终端视图键的条目.\n这些非常冗长，应在正常情况下禁用，否则会导致性能问题." $str

rep "Plugin Error Notifications" "插件错误通知" $str
rep "Disable flashes and notifications for plugin errors." "禁用插件错误的闪烁和通知." $str
rep "Show flashes and notifications for plugin errors. (Default)" "显示插件错误的闪烁和通知.(默认)" $str
rep "Crash Report Notifications" "崩溃报告通知" $str
rep "Disable notifications for crash reports." "禁用崩溃报告的通知" $str
rep "Show notifications for crash reports. (Default)" "显示崩 溃报告的通知.(默认)" $str

rep "Terminal I\/O" "终端I\/O" $str
rep "Preferences for terminal I\/O" "终端I\/O首选项" $str

rep "Keyboard" "键盘" $str
rep "Soft Keyboard Enabled" "启用软键盘" $str
rep "Soft keyboard will be enabled. (Default)" "启用软键盘.(默认)" $str
rep "Soft keyboard will be disabled." "禁用软键盘" $str
rep "Soft Keyboard Only If No Hardware" "仅在没有硬件键盘时启 用软键盘" $str
rep "Soft keyboard will be enabled even if\n\s*hardware keyboard is connected. (Default)" "即使硬件键盘连接，也会启用软键盘.(默认)" $str
rep "Soft keyboard will be enabled only if\n\s*no hardware keyboard is connected." "仅在没有硬件键盘连接时启用软键盘" $str

rep "Terminal View" "终端视图" $str
rep "Preferences for terminal view" "终端视图首选项" $str
rep "View" "视图" $str
rep "Terminal Margin Adjustment" "终端边距调整" $str
rep "Terminal margin adjustment will be disabled." "禁用终端边距调整" $str
rep "Terminal margin adjustment will be enabled.\n\s*It should be enabled to try to fix the issue where soft keyboard covers part of extra keys\/terminal view.\n\s*If it causes screen flickering on your devices, then disable it. (Default)" "启用终端边距调整.\n它应该启用以尝试修复软键盘覆盖额外键\/终端视图的一部分的问题.\n如果它在您的设备上 导致屏幕闪烁，请禁用它.(默认)" $str

rep "Preferences for &TERMUX_API_APP_NAME; app" "\&TERMUX_API_APP_NAME;  应用首选项" $str
rep "Preferences for &TERMUX_FLOAT_APP_NAME; app" "\&TERMUX_FLOAT_APP_NAME; 应用首选项" $str
rep "Preferences for &TERMUX_TASKER_APP_NAME; app" "\&TERMUX_TASKER_APP_NAME; 应用首选项" $str
rep "Preferences for &TERMUX_WIDGET_APP_NAME; app" "\&TERMUX_WIDGET_APP_NAME; 应用首选项" $str

rep "About" "关于" $str
rep "Donate" "捐赠" $str

rep2 "The following file does not exist" "以下文件不存在" app/src/main/java/com/termux/app/api/file/FileReceiverActivity.java
rep2 "Create this file as a script or a symlink - it will be called with the received file as only argument" "把使用的编辑器命令链接到此文件" app/src/main/java/com/termux/app/api/file/FileReceiverActivity.java
rep2 " session\" + (sessionCount == 1 ? \"\" : \"s\")" "个会话\" + (sessionCount == 1 ? \"\" : \"\")" app/src/main/java/com/termux/app/TermuxService.java
rep2 "Process completed" "进程已结束" terminal-emulator/src/main/java/com/termux/terminal/TerminalSession.java
rep2 "press Enter" "按回车关闭" terminal-emulator/src/main/java/com/termux/terminal/TerminalSession.java
printf "修改完成----\n"

echo "修改软件图标"

cat > app/src/main/res/drawable/ic_foreground.xml <<'EOF'
<?xml version="1.0" encoding="utf-8"?>
<vector xmlns:android="http://schemas.android.com/apk/res/android"
  android:height="108dp"
  android:width="108dp"
  android:viewportWidth="108.0"
  android:viewportHeight="108.0">
  <path
    android:fillColor="#FFFFFFFF"
    android:pathData="M0,0  H108  V54  H-54 Z" />
    <path
      android:fillColor="#FF464646"
      android:pathData="M34,38   h6 l12,16   l-12,16  h-6    l12,-16" />
    <path
      android:fillColor="#FFFFFFFF"
      android:pathData="M34,54   h6 l12,0   l-12,16  h-6 l12,-16" />
    <path
      android:fillColor="#FFFFFFFF"
      android:pathData="M56,66  h18  v4  h-18" />
</vector>
EOF
