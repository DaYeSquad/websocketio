APP_STL := gnustl_static
#APP_STL := c++_shared
APP_PLATFORM := android-14
APP_CPPFLAGS := -std=c++11
APP_CPPFLAGS += -frtti #-Wno-format-security #-Wno-literal-suffix
APP_OPTIM := debug
NDK_TOOLCHAIN_VERSION=4.9
APP_ABI := armeabi x86
#APP_ABI := x86
#APP_ABI := all
#LIBCXX_USE_GABIXX:=true