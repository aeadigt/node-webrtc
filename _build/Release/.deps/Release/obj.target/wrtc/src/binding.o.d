cmd_Release/obj.target/wrtc/src/binding.o := g++ '-DNODE_GYP_MODULE_NAME=wrtc' '-DUSING_UV_SHARED=1' '-DUSING_V8_SHARED=1' '-DV8_DEPRECATION_WARNINGS=1' '-D_LARGEFILE_SOURCE' '-D_FILE_OFFSET_BITS=64' '-DWEBRTC_THREAD_RR' '-DEXPAT_RELATIVE_PATH' '-DGTEST_RELATIVE_PATH' '-DJSONCPP_RELATIVE_PATH' '-DWEBRTC_RELATIVE_PATH' '-D_GLIBCXX_USE_CXX11_ABI=0' '-DWEBRTC_LINUX' '-DWEBRTC_POSIX=1' '-DBUILDING_NODE_EXTENSION' -I/home/aea/.node-gyp/6.10.3/include/node -I/home/aea/.node-gyp/6.10.3/src -I/home/aea/.node-gyp/6.10.3/deps/uv/include -I/home/aea/.node-gyp/6.10.3/deps/v8/include -I../node_modules/nan -I../third_party/webrtc/include  -fPIC -pthread -Wall -Wextra -Wno-unused-parameter -m64 -pthread -fno-exceptions -fno-strict-aliasing -Wall -Wno-unused-parameter -Wno-missing-field-initializers -Wextra -Wno-unused-local-typedefs -Wno-uninitialized -Wno-unused-variable -Wno-unused-but-set-variable -pipe -fno-ident -fdata-sections -ffunction-sections -fPIC -fpermissive -std=c++11 -O3 -fno-omit-frame-pointer -fno-rtti -fno-exceptions -std=gnu++0x -MMD -MF ./Release/.deps/Release/obj.target/wrtc/src/binding.o.d.raw   -c -o Release/obj.target/wrtc/src/binding.o ../src/binding.cc
Release/obj.target/wrtc/src/binding.o: ../src/binding.cc \
 /home/aea/.node-gyp/6.10.3/include/node/node.h \
 /home/aea/.node-gyp/6.10.3/include/node/v8.h \
 /home/aea/.node-gyp/6.10.3/include/node/v8-version.h \
 /home/aea/.node-gyp/6.10.3/include/node/v8config.h \
 /home/aea/.node-gyp/6.10.3/include/node/node_version.h \
 /home/aea/.node-gyp/6.10.3/include/node/v8.h \
 ../third_party/webrtc/include/webrtc/api/peerconnectioninterface.h \
 ../third_party/webrtc/include/webrtc/api/datachannelinterface.h \
 ../third_party/webrtc/include/webrtc/base/basictypes.h \
 ../third_party/webrtc/include/webrtc/base/buffer.h \
 ../third_party/webrtc/include/webrtc/base/array_view.h \
 ../third_party/webrtc/include/webrtc/base/checks.h \
 ../third_party/webrtc/include/webrtc/typedefs.h \
 ../third_party/webrtc/include/webrtc/base/constructormagic.h \
 ../third_party/webrtc/include/webrtc/base/deprecation.h \
 ../third_party/webrtc/include/webrtc/base/refcount.h \
 ../third_party/webrtc/include/webrtc/base/atomicops.h \
 ../third_party/webrtc/include/webrtc/api/dtlsidentitystore.h \
 ../third_party/webrtc/include/webrtc/base/messagehandler.h \
 ../third_party/webrtc/include/webrtc/base/scoped_ptr.h \
 ../third_party/webrtc/include/webrtc/base/template_util.h \
 ../third_party/webrtc/include/webrtc/base/messagequeue.h \
 ../third_party/webrtc/include/webrtc/base/criticalsection.h \
 ../third_party/webrtc/include/webrtc/base/thread_annotations.h \
 ../third_party/webrtc/include/webrtc/base/platform_thread_types.h \
 ../third_party/webrtc/include/webrtc/base/scoped_ref_ptr.h \
 ../third_party/webrtc/include/webrtc/base/sharedexclusivelock.h \
 ../third_party/webrtc/include/webrtc/base/event.h \
 ../third_party/webrtc/include/webrtc/base/sigslot.h \
 ../third_party/webrtc/include/webrtc/base/socketserver.h \
 ../third_party/webrtc/include/webrtc/base/socketfactory.h \
 ../third_party/webrtc/include/webrtc/base/socket.h \
 ../third_party/webrtc/include/webrtc/base/socketaddress.h \
 ../third_party/webrtc/include/webrtc/base/ipaddress.h \
 ../third_party/webrtc/include/webrtc/base/byteorder.h \
 ../third_party/webrtc/include/webrtc/base/asyncsocket.h \
 ../third_party/webrtc/include/webrtc/base/common.h \
 ../third_party/webrtc/include/webrtc/base/timeutils.h \
 ../third_party/webrtc/include/webrtc/base/sslidentity.h \
 ../third_party/webrtc/include/webrtc/base/messagedigest.h \
 ../third_party/webrtc/include/webrtc/base/thread.h \
 ../third_party/webrtc/include/webrtc/api/dtmfsenderinterface.h \
 ../third_party/webrtc/include/webrtc/api/mediastreaminterface.h \
 ../third_party/webrtc/include/webrtc/media/base/videosinkinterface.h \
 ../third_party/webrtc/include/webrtc/api/jsep.h \
 ../third_party/webrtc/include/webrtc/api/rtpreceiverinterface.h \
 ../third_party/webrtc/include/webrtc/api/proxy.h \
 ../third_party/webrtc/include/webrtc/api/rtpsenderinterface.h \
 ../third_party/webrtc/include/webrtc/pc/mediasession.h \
 ../third_party/webrtc/include/webrtc/media/base/codec.h \
 ../third_party/webrtc/include/webrtc/media/base/constants.h \
 ../third_party/webrtc/include/webrtc/media/base/cryptoparams.h \
 ../third_party/webrtc/include/webrtc/media/base/mediachannel.h \
 ../third_party/webrtc/include/webrtc/base/dscp.h \
 ../third_party/webrtc/include/webrtc/base/logging.h \
 ../third_party/webrtc/include/webrtc/base/optional.h \
 ../third_party/webrtc/include/webrtc/base/window.h \
 ../third_party/webrtc/include/webrtc/base/stringencode.h \
 ../third_party/webrtc/include/webrtc/media/base/streamparams.h \
 ../third_party/webrtc/include/webrtc/pc/audiomonitor.h \
 ../third_party/webrtc/include/webrtc/p2p/base/port.h \
 ../third_party/webrtc/include/webrtc/p2p/base/candidate.h \
 ../third_party/webrtc/include/webrtc/p2p/base/constants.h \
 ../third_party/webrtc/include/webrtc/base/helpers.h \
 ../third_party/webrtc/include/webrtc/base/network.h \
 ../third_party/webrtc/include/webrtc/base/networkmonitor.h \
 ../third_party/webrtc/include/webrtc/p2p/base/packetsocketfactory.h \
 ../third_party/webrtc/include/webrtc/base/proxyinfo.h \
 ../third_party/webrtc/include/webrtc/base/cryptstring.h \
 ../third_party/webrtc/include/webrtc/base/linked_ptr.h \
 ../third_party/webrtc/include/webrtc/p2p/base/portinterface.h \
 ../third_party/webrtc/include/webrtc/p2p/base/transport.h \
 ../third_party/webrtc/include/webrtc/p2p/base/sessiondescription.h \
 ../third_party/webrtc/include/webrtc/p2p/base/transportinfo.h \
 ../third_party/webrtc/include/webrtc/p2p/base/transportdescription.h \
 ../third_party/webrtc/include/webrtc/base/sslfingerprint.h \
 ../third_party/webrtc/include/webrtc/base/rtccertificate.h \
 ../third_party/webrtc/include/webrtc/base/sslstreamadapter.h \
 ../third_party/webrtc/include/webrtc/base/stream.h \
 ../third_party/webrtc/include/webrtc/base/asyncpacketsocket.h \
 ../third_party/webrtc/include/webrtc/p2p/base/stun.h \
 ../third_party/webrtc/include/webrtc/base/bytebuffer.h \
 ../third_party/webrtc/include/webrtc/p2p/base/stunrequest.h \
 ../third_party/webrtc/include/webrtc/base/ratetracker.h \
 ../third_party/webrtc/include/webrtc/media/base/mediaengine.h \
 ../third_party/webrtc/include/webrtc/audio_state.h \
 ../third_party/webrtc/include/webrtc/base/fileutils.h \
 ../third_party/webrtc/include/webrtc/base/platform_file.h \
 ../third_party/webrtc/include/webrtc/base/sigslotrepeater.h \
 ../third_party/webrtc/include/webrtc/media/base/mediacommon.h \
 ../third_party/webrtc/include/webrtc/media/base/videocapturer.h \
 ../third_party/webrtc/include/webrtc/media/base/videosourceinterface.h \
 ../third_party/webrtc/include/webrtc/base/callback.h \
 ../third_party/webrtc/include/webrtc/base/rollingaccumulator.h \
 ../third_party/webrtc/include/webrtc/base/timing.h \
 ../third_party/webrtc/include/webrtc/media/base/videoadapter.h \
 ../third_party/webrtc/include/webrtc/media/base/videocommon.h \
 ../third_party/webrtc/include/webrtc/media/base/videobroadcaster.h \
 ../third_party/webrtc/include/webrtc/base/thread_checker.h \
 ../third_party/webrtc/include/webrtc/base/thread_checker_impl.h \
 ../third_party/webrtc/include/webrtc/media/base/videoframe.h \
 ../third_party/webrtc/include/webrtc/common_video/include/video_frame_buffer.h \
 ../third_party/webrtc/include/webrtc/system_wrappers/include/aligned_malloc.h \
 ../third_party/webrtc/include/webrtc/common_video/rotation.h \
 ../third_party/webrtc/include/webrtc/media/base/videoframefactory.h \
 ../third_party/webrtc/include/webrtc/media/devices/devicemanager.h \
 ../third_party/webrtc/include/webrtc/media/base/device.h \
 ../third_party/webrtc/include/webrtc/media/base/screencastid.h \
 ../third_party/webrtc/include/webrtc/base/windowpicker.h \
 ../third_party/webrtc/include/webrtc/media/base/videocapturerfactory.h \
 ../third_party/webrtc/include/webrtc/p2p/base/transportdescriptionfactory.h \
 ../third_party/webrtc/include/webrtc/api/statstypes.h \
 ../third_party/webrtc/include/webrtc/api/umametrics.h \
 ../third_party/webrtc/include/webrtc/p2p/base/portallocator.h \
 ../third_party/webrtc/include/webrtc/base/ssladapter.h \
 ../src/peerconnection.h ../node_modules/nan/nan.h \
 /home/aea/.node-gyp/6.10.3/include/node/node_version.h \
 /home/aea/.node-gyp/6.10.3/include/node/uv.h \
 /home/aea/.node-gyp/6.10.3/include/node/uv-errno.h \
 /home/aea/.node-gyp/6.10.3/include/node/uv-version.h \
 /home/aea/.node-gyp/6.10.3/include/node/uv-unix.h \
 /home/aea/.node-gyp/6.10.3/include/node/uv-threadpool.h \
 /home/aea/.node-gyp/6.10.3/include/node/uv-linux.h \
 /home/aea/.node-gyp/6.10.3/include/node/node_buffer.h \
 /home/aea/.node-gyp/6.10.3/include/node/node.h \
 /home/aea/.node-gyp/6.10.3/include/node/node_object_wrap.h \
 ../node_modules/nan/nan_callbacks.h \
 ../node_modules/nan/nan_callbacks_12_inl.h \
 ../node_modules/nan/nan_maybe_43_inl.h \
 ../node_modules/nan/nan_converters.h \
 ../node_modules/nan/nan_converters_43_inl.h \
 ../node_modules/nan/nan_new.h \
 ../node_modules/nan/nan_implementation_12_inl.h \
 ../node_modules/nan/nan_persistent_12_inl.h \
 ../node_modules/nan/nan_weak.h ../node_modules/nan/nan_object_wrap.h \
 ../node_modules/nan/nan_private.h \
 ../node_modules/nan/nan_typedarray_contents.h \
 ../node_modules/nan/nan_json.h ../src/datachannel.h \
 ../src/rtcstatsreport.h ../src/rtcstatsresponse.h
../src/binding.cc:
/home/aea/.node-gyp/6.10.3/include/node/node.h:
/home/aea/.node-gyp/6.10.3/include/node/v8.h:
/home/aea/.node-gyp/6.10.3/include/node/v8-version.h:
/home/aea/.node-gyp/6.10.3/include/node/v8config.h:
/home/aea/.node-gyp/6.10.3/include/node/node_version.h:
/home/aea/.node-gyp/6.10.3/include/node/v8.h:
../third_party/webrtc/include/webrtc/api/peerconnectioninterface.h:
../third_party/webrtc/include/webrtc/api/datachannelinterface.h:
../third_party/webrtc/include/webrtc/base/basictypes.h:
../third_party/webrtc/include/webrtc/base/buffer.h:
../third_party/webrtc/include/webrtc/base/array_view.h:
../third_party/webrtc/include/webrtc/base/checks.h:
../third_party/webrtc/include/webrtc/typedefs.h:
../third_party/webrtc/include/webrtc/base/constructormagic.h:
../third_party/webrtc/include/webrtc/base/deprecation.h:
../third_party/webrtc/include/webrtc/base/refcount.h:
../third_party/webrtc/include/webrtc/base/atomicops.h:
../third_party/webrtc/include/webrtc/api/dtlsidentitystore.h:
../third_party/webrtc/include/webrtc/base/messagehandler.h:
../third_party/webrtc/include/webrtc/base/scoped_ptr.h:
../third_party/webrtc/include/webrtc/base/template_util.h:
../third_party/webrtc/include/webrtc/base/messagequeue.h:
../third_party/webrtc/include/webrtc/base/criticalsection.h:
../third_party/webrtc/include/webrtc/base/thread_annotations.h:
../third_party/webrtc/include/webrtc/base/platform_thread_types.h:
../third_party/webrtc/include/webrtc/base/scoped_ref_ptr.h:
../third_party/webrtc/include/webrtc/base/sharedexclusivelock.h:
../third_party/webrtc/include/webrtc/base/event.h:
../third_party/webrtc/include/webrtc/base/sigslot.h:
../third_party/webrtc/include/webrtc/base/socketserver.h:
../third_party/webrtc/include/webrtc/base/socketfactory.h:
../third_party/webrtc/include/webrtc/base/socket.h:
../third_party/webrtc/include/webrtc/base/socketaddress.h:
../third_party/webrtc/include/webrtc/base/ipaddress.h:
../third_party/webrtc/include/webrtc/base/byteorder.h:
../third_party/webrtc/include/webrtc/base/asyncsocket.h:
../third_party/webrtc/include/webrtc/base/common.h:
../third_party/webrtc/include/webrtc/base/timeutils.h:
../third_party/webrtc/include/webrtc/base/sslidentity.h:
../third_party/webrtc/include/webrtc/base/messagedigest.h:
../third_party/webrtc/include/webrtc/base/thread.h:
../third_party/webrtc/include/webrtc/api/dtmfsenderinterface.h:
../third_party/webrtc/include/webrtc/api/mediastreaminterface.h:
../third_party/webrtc/include/webrtc/media/base/videosinkinterface.h:
../third_party/webrtc/include/webrtc/api/jsep.h:
../third_party/webrtc/include/webrtc/api/rtpreceiverinterface.h:
../third_party/webrtc/include/webrtc/api/proxy.h:
../third_party/webrtc/include/webrtc/api/rtpsenderinterface.h:
../third_party/webrtc/include/webrtc/pc/mediasession.h:
../third_party/webrtc/include/webrtc/media/base/codec.h:
../third_party/webrtc/include/webrtc/media/base/constants.h:
../third_party/webrtc/include/webrtc/media/base/cryptoparams.h:
../third_party/webrtc/include/webrtc/media/base/mediachannel.h:
../third_party/webrtc/include/webrtc/base/dscp.h:
../third_party/webrtc/include/webrtc/base/logging.h:
../third_party/webrtc/include/webrtc/base/optional.h:
../third_party/webrtc/include/webrtc/base/window.h:
../third_party/webrtc/include/webrtc/base/stringencode.h:
../third_party/webrtc/include/webrtc/media/base/streamparams.h:
../third_party/webrtc/include/webrtc/pc/audiomonitor.h:
../third_party/webrtc/include/webrtc/p2p/base/port.h:
../third_party/webrtc/include/webrtc/p2p/base/candidate.h:
../third_party/webrtc/include/webrtc/p2p/base/constants.h:
../third_party/webrtc/include/webrtc/base/helpers.h:
../third_party/webrtc/include/webrtc/base/network.h:
../third_party/webrtc/include/webrtc/base/networkmonitor.h:
../third_party/webrtc/include/webrtc/p2p/base/packetsocketfactory.h:
../third_party/webrtc/include/webrtc/base/proxyinfo.h:
../third_party/webrtc/include/webrtc/base/cryptstring.h:
../third_party/webrtc/include/webrtc/base/linked_ptr.h:
../third_party/webrtc/include/webrtc/p2p/base/portinterface.h:
../third_party/webrtc/include/webrtc/p2p/base/transport.h:
../third_party/webrtc/include/webrtc/p2p/base/sessiondescription.h:
../third_party/webrtc/include/webrtc/p2p/base/transportinfo.h:
../third_party/webrtc/include/webrtc/p2p/base/transportdescription.h:
../third_party/webrtc/include/webrtc/base/sslfingerprint.h:
../third_party/webrtc/include/webrtc/base/rtccertificate.h:
../third_party/webrtc/include/webrtc/base/sslstreamadapter.h:
../third_party/webrtc/include/webrtc/base/stream.h:
../third_party/webrtc/include/webrtc/base/asyncpacketsocket.h:
../third_party/webrtc/include/webrtc/p2p/base/stun.h:
../third_party/webrtc/include/webrtc/base/bytebuffer.h:
../third_party/webrtc/include/webrtc/p2p/base/stunrequest.h:
../third_party/webrtc/include/webrtc/base/ratetracker.h:
../third_party/webrtc/include/webrtc/media/base/mediaengine.h:
../third_party/webrtc/include/webrtc/audio_state.h:
../third_party/webrtc/include/webrtc/base/fileutils.h:
../third_party/webrtc/include/webrtc/base/platform_file.h:
../third_party/webrtc/include/webrtc/base/sigslotrepeater.h:
../third_party/webrtc/include/webrtc/media/base/mediacommon.h:
../third_party/webrtc/include/webrtc/media/base/videocapturer.h:
../third_party/webrtc/include/webrtc/media/base/videosourceinterface.h:
../third_party/webrtc/include/webrtc/base/callback.h:
../third_party/webrtc/include/webrtc/base/rollingaccumulator.h:
../third_party/webrtc/include/webrtc/base/timing.h:
../third_party/webrtc/include/webrtc/media/base/videoadapter.h:
../third_party/webrtc/include/webrtc/media/base/videocommon.h:
../third_party/webrtc/include/webrtc/media/base/videobroadcaster.h:
../third_party/webrtc/include/webrtc/base/thread_checker.h:
../third_party/webrtc/include/webrtc/base/thread_checker_impl.h:
../third_party/webrtc/include/webrtc/media/base/videoframe.h:
../third_party/webrtc/include/webrtc/common_video/include/video_frame_buffer.h:
../third_party/webrtc/include/webrtc/system_wrappers/include/aligned_malloc.h:
../third_party/webrtc/include/webrtc/common_video/rotation.h:
../third_party/webrtc/include/webrtc/media/base/videoframefactory.h:
../third_party/webrtc/include/webrtc/media/devices/devicemanager.h:
../third_party/webrtc/include/webrtc/media/base/device.h:
../third_party/webrtc/include/webrtc/media/base/screencastid.h:
../third_party/webrtc/include/webrtc/base/windowpicker.h:
../third_party/webrtc/include/webrtc/media/base/videocapturerfactory.h:
../third_party/webrtc/include/webrtc/p2p/base/transportdescriptionfactory.h:
../third_party/webrtc/include/webrtc/api/statstypes.h:
../third_party/webrtc/include/webrtc/api/umametrics.h:
../third_party/webrtc/include/webrtc/p2p/base/portallocator.h:
../third_party/webrtc/include/webrtc/base/ssladapter.h:
../src/peerconnection.h:
../node_modules/nan/nan.h:
/home/aea/.node-gyp/6.10.3/include/node/node_version.h:
/home/aea/.node-gyp/6.10.3/include/node/uv.h:
/home/aea/.node-gyp/6.10.3/include/node/uv-errno.h:
/home/aea/.node-gyp/6.10.3/include/node/uv-version.h:
/home/aea/.node-gyp/6.10.3/include/node/uv-unix.h:
/home/aea/.node-gyp/6.10.3/include/node/uv-threadpool.h:
/home/aea/.node-gyp/6.10.3/include/node/uv-linux.h:
/home/aea/.node-gyp/6.10.3/include/node/node_buffer.h:
/home/aea/.node-gyp/6.10.3/include/node/node.h:
/home/aea/.node-gyp/6.10.3/include/node/node_object_wrap.h:
../node_modules/nan/nan_callbacks.h:
../node_modules/nan/nan_callbacks_12_inl.h:
../node_modules/nan/nan_maybe_43_inl.h:
../node_modules/nan/nan_converters.h:
../node_modules/nan/nan_converters_43_inl.h:
../node_modules/nan/nan_new.h:
../node_modules/nan/nan_implementation_12_inl.h:
../node_modules/nan/nan_persistent_12_inl.h:
../node_modules/nan/nan_weak.h:
../node_modules/nan/nan_object_wrap.h:
../node_modules/nan/nan_private.h:
../node_modules/nan/nan_typedarray_contents.h:
../node_modules/nan/nan_json.h:
../src/datachannel.h:
../src/rtcstatsreport.h:
../src/rtcstatsresponse.h:
