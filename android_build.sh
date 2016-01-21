#!/bin/sh

export PATH=$PATH:/home/ecorbellini/Android/android-ndk

export NDK_PROJECT_PATH=$(dirname $0)

SCRIPT="android/Android.mk"
APPLICATION="android/Application.mk"

ndk-build V=1 APP_BUILD_SCRIPT=${SCRIPT} NDK_APPLICATION_MK=${APPLICATION}

