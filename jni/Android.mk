LOCAL_PATH:= $(call my-dir)/../src

include $(CLEAR_VARS)

LOCAL_MODULE := socketio
LOCAL_SRC_FILES +=  sio_client.cpp \
					sio_socket.cpp \
					internal/sio_client_impl.cpp \
					internal/sio_packet.cpp 
LOCAL_CPPFLAGS += -std=gnu++11
LOCAL_CPPFLAGS += -fexceptions
LOCAL_C_INCLUDES := $(LOCAL_PATH) \
					$(LOCAL_PATH)/internal \
					$(LOCAL_PATH)/../lib/websocketpp \
					$(LOCAL_PATH)/../lib/rapidjson/include \
					$(LOCAL_PATH)/../lib
LOCAL_LDLIBS := -llog -lz

LOCAL_LDFLAGS += $(LOCAL_PATH)/../lib/boost/$(TARGET_ARCH_ABI)/libboost_system.a


include $(BUILD_SHARED_LIBRARY)