# freertps
a free, portable, minimalist RTPS implementation under development

Some documentation is available in the [wiki](https://github.com/ros2/freertps/wiki)

## Android build

We will build freertp as a static library that later will be linked to 
a JNI wrapper and converted into a shared library to dynamically load into 
our Android project.

We use the posix version and add [this implementation](https://github.com/michalsrb/android-ifaddrs) 
of ifaddrs library for Android.

1. Download and install [Android NDK](http://developer.android.com/tools/sdk/ndk/index.html)
2. Edit the `android_build.sh` file and set the `NDK_PATH` to 
point to the path where your NDK is installed.
3. Run `./android_build.sh`
4. If everything goes well you can find the resulting library located in `obj/local/armeabi/libfreertps_lib.a`

