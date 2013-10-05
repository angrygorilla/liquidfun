LOCAL_PATH:=$(call my-dir)/..

# --- HelloWorld ---
include $(CLEAR_VARS)
LOCAL_MODULE:=HelloWorld
LOCAL_MODULE_TAGS:=optional
LOCAL_SRC_FILES:=$(LOCAL_PATH)/HelloWorld.cpp
LOCAL_C_INCLUDES:=$(LOCAL_PATH)/..
LOCAL_LDLIBS:=-llog -landroid
LOCAL_STATIC_LIBRARIES:=android_native_app_glue libBox2D_static
include $(BUILD_SHARED_LIBRARY)
# Import Box2D libraries and native_app_glue.
$(call import-module,Box2D/jni)
$(call import-module,android/native_app_glue)
