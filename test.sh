#!/bin/bash
echo "测试"
git clone https://github.com/termux/termux-app
cd termux-app
./gradlew assembleDebug
echo "结束"
