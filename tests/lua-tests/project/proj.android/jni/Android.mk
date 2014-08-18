LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lua_tests_shared

LOCAL_MODULE_FILENAME := liblua_tests

LOCAL_SRC_FILES += main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/lua_assetsmanager_test_sample.cpp


LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2d_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += network_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosbuilder_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocostudio_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += spine_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += extension_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += ui_lua_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos3d_lua_static


include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/lua-bindings/proj.android)
