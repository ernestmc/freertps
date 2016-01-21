#!/bin/sh

NDK_PATH=/home/ecorbellini/Android/android-ndk

export PATH=$PATH:$NDK_PATH

export NDK_PROJECT_PATH=$(dirname $0)

SCRIPT="android/Android.mk"
APPLICATION="android/Application.mk"

ndk-build V=1 APP_BUILD_SCRIPT=${SCRIPT} NDK_APPLICATION_MK=${APPLICATION}

