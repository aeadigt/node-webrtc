# This file is generated by gyp; do not edit.

TOOLSET := target
TARGET := wrtc
DEFS_Debug := \
	'-DNODE_GYP_MODULE_NAME=wrtc' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DWEBRTC_THREAD_RR' \
	'-DEXPAT_RELATIVE_PATH' \
	'-DGTEST_RELATIVE_PATH' \
	'-DJSONCPP_RELATIVE_PATH' \
	'-DWEBRTC_RELATIVE_PATH' \
	'-D_GLIBCXX_USE_CXX11_ABI=0' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_POSIX=1' \
	'-DBUILDING_NODE_EXTENSION' \
	'-DDEBUG' \
	'-D_DEBUG'

# Flags passed to all source files.
CFLAGS_Debug := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-pthread \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-Wextra \
	-Wno-unused-local-typedefs \
	-Wno-uninitialized \
	-Wno-unused-variable \
	-Wno-unused-but-set-variable \
	-pipe \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fPIC \
	-fpermissive \
	-std=c++11 \
	-g \
	-O0

# Flags passed to only C files.
CFLAGS_C_Debug :=

# Flags passed to only C++ files.
CFLAGS_CC_Debug := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Debug := \
	-I/home/aea/.node-gyp/6.10.3/include/node \
	-I/home/aea/.node-gyp/6.10.3/src \
	-I/home/aea/.node-gyp/6.10.3/deps/uv/include \
	-I/home/aea/.node-gyp/6.10.3/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I$(srcdir)/third_party/webrtc/include

DEFS_Release := \
	'-DNODE_GYP_MODULE_NAME=wrtc' \
	'-DUSING_UV_SHARED=1' \
	'-DUSING_V8_SHARED=1' \
	'-DV8_DEPRECATION_WARNINGS=1' \
	'-D_LARGEFILE_SOURCE' \
	'-D_FILE_OFFSET_BITS=64' \
	'-DWEBRTC_THREAD_RR' \
	'-DEXPAT_RELATIVE_PATH' \
	'-DGTEST_RELATIVE_PATH' \
	'-DJSONCPP_RELATIVE_PATH' \
	'-DWEBRTC_RELATIVE_PATH' \
	'-D_GLIBCXX_USE_CXX11_ABI=0' \
	'-DWEBRTC_LINUX' \
	'-DWEBRTC_POSIX=1' \
	'-DBUILDING_NODE_EXTENSION'

# Flags passed to all source files.
CFLAGS_Release := \
	-fPIC \
	-pthread \
	-Wall \
	-Wextra \
	-Wno-unused-parameter \
	-m64 \
	-pthread \
	-fno-exceptions \
	-fno-strict-aliasing \
	-Wall \
	-Wno-unused-parameter \
	-Wno-missing-field-initializers \
	-Wextra \
	-Wno-unused-local-typedefs \
	-Wno-uninitialized \
	-Wno-unused-variable \
	-Wno-unused-but-set-variable \
	-pipe \
	-fno-ident \
	-fdata-sections \
	-ffunction-sections \
	-fPIC \
	-fpermissive \
	-std=c++11 \
	-O3 \
	-fno-omit-frame-pointer

# Flags passed to only C files.
CFLAGS_C_Release :=

# Flags passed to only C++ files.
CFLAGS_CC_Release := \
	-fno-rtti \
	-fno-exceptions \
	-std=gnu++0x

INCS_Release := \
	-I/home/aea/.node-gyp/6.10.3/include/node \
	-I/home/aea/.node-gyp/6.10.3/src \
	-I/home/aea/.node-gyp/6.10.3/deps/uv/include \
	-I/home/aea/.node-gyp/6.10.3/deps/v8/include \
	-I$(srcdir)/node_modules/nan \
	-I$(srcdir)/third_party/webrtc/include

OBJS := \
	$(obj).target/$(TARGET)/src/binding.o \
	$(obj).target/$(TARGET)/src/create-answer-observer.o \
	$(obj).target/$(TARGET)/src/create-offer-observer.o \
	$(obj).target/$(TARGET)/src/datachannel.o \
	$(obj).target/$(TARGET)/src/peerconnection.o \
	$(obj).target/$(TARGET)/src/rtcstatsreport.o \
	$(obj).target/$(TARGET)/src/rtcstatsresponse.o \
	$(obj).target/$(TARGET)/src/set-local-description-observer.o \
	$(obj).target/$(TARGET)/src/set-remote-description-observer.o \
	$(obj).target/$(TARGET)/src/stats-observer.o

# Add to the list of files we specially track dependencies for.
all_deps += $(OBJS)

# Make sure our dependencies are built before any of us.
$(OBJS): | $(obj).target/action_before_build.stamp

# CFLAGS et al overrides must be target-local.
# See "Target-specific Variable Values" in the GNU Make manual.
$(OBJS): TOOLSET := $(TOOLSET)
$(OBJS): GYP_CFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_C_$(BUILDTYPE))
$(OBJS): GYP_CXXFLAGS := $(DEFS_$(BUILDTYPE)) $(INCS_$(BUILDTYPE))  $(CFLAGS_$(BUILDTYPE)) $(CFLAGS_CC_$(BUILDTYPE))

# Suffix rules, putting all outputs into $(obj).

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(srcdir)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# Try building from generated source, too.

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj).$(TOOLSET)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

$(obj).$(TOOLSET)/$(TARGET)/%.o: $(obj)/%.cc FORCE_DO_CMD
	@$(call do_cmd,cxx,1)

# End of this set of suffix rules
### Rules for final target.
LDFLAGS_Debug := \
	-pthread \
	-rdynamic \
	-m64

LDFLAGS_Release := \
	-pthread \
	-rdynamic \
	-m64

LIBS := \
	../third_party/webrtc/lib/libwebrtc.a

$(obj).target/wrtc.node: GYP_LDFLAGS := $(LDFLAGS_$(BUILDTYPE))
$(obj).target/wrtc.node: LIBS := $(LIBS)
$(obj).target/wrtc.node: TOOLSET := $(TOOLSET)
$(obj).target/wrtc.node: $(OBJS) FORCE_DO_CMD
	$(call do_cmd,solink_module)

all_deps += $(obj).target/wrtc.node
# Add target alias
.PHONY: wrtc
wrtc: $(builddir)/wrtc.node

# Copy this to the executable output path.
$(builddir)/wrtc.node: TOOLSET := $(TOOLSET)
$(builddir)/wrtc.node: $(obj).target/wrtc.node FORCE_DO_CMD
	$(call do_cmd,copy)

all_deps += $(builddir)/wrtc.node
# Short alias for building this executable.
.PHONY: wrtc.node
wrtc.node: $(obj).target/wrtc.node $(builddir)/wrtc.node

# Add executable to "all" target.
.PHONY: all
all: $(builddir)/wrtc.node

