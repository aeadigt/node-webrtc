let webrtc = require('..');

let RTCPeerConnection     = webrtc.RTCPeerConnection;
let RTCSessionDescription = webrtc.RTCSessionDescription;
let RTCIceCandidate       = webrtc.RTCIceCandidate;


// ******************** Socket.io 2 ******************** //
var socket2 = require('socket.io-client')('http://localhost:8000');

socket2.on('connect', function() {
  console.log('Socket2 Connect');
});
socket2.on('event', function(data) {
  console.log('Socket2 Event data: ', data);
});
socket2.on('message', function(data) {
  //console.log('Socket2 message: ', data);

  if (data && data.type && data.type == 'offer') {
    set_pc2_remote_description(data);
  } else if (data && data.candidate) {
    pc2.addIceCandidate(data.candidate);
  }
});
socket2.on('disconnect', function() {
  console.log('Socket2 Disconnect');
});

// ******************** WRTC 2 ******************** //
let pc2 = new RTCPeerConnection();

function handle_error(error) {
  throw error;
}

pc2.onicecandidate = function(candidate) {
  if (!candidate.candidate) return;
  socket2.send(candidate);
  //pc1.addIceCandidate(candidate.candidate);
}

function create_data_channels2() {
  let dc2;
  pc2.ondatachannel = function(event) {
    dc2 = event.channel;

    dc2.onopen = function() {
      console.log('pc2: data channel open');

      dc2.onmessage = function(event) {
        let data = event.data;
        console.log('dc2: received ' + data);
      }
      console.log('dc2: sending ping');
      dc2.send('ping');
    };
  }
}

function set_pc2_remote_description(desc) {
  console.log('pc2: set remote description');

  pc2.setRemoteDescription(
    new RTCSessionDescription(desc),
    create_answer,
    handle_error
  );
}

function create_answer() {
  console.log('pc2: create answer');

  pc2.createAnswer(
    set_pc2_local_description,
    handle_error
  );
}

function set_pc2_local_description(desc) {
  console.log('pc2: set local description');

  pc2.setLocalDescription(
    new RTCSessionDescription(desc),
    function () {
      socket2.send(desc);
    },
    handle_error
  );
}


// ******************** Run ******************** //
create_data_channels2();