var fs = require('fs');
var writeStream = fs.createWriteStream('record.txt');


// ******************** Socket.io 1 ******************** //
var socket1 = require('socket.io-client')('http://localhost:8000');

socket1.on('connect', function() {
  console.log('Socket1 Connect');
});
socket1.on('event', function(data) {
  console.log('Socket1 Event data: ', data);
});
socket1.on('message', function(data) {
  //console.log('Socket1 message: ', data);

  if (data && data.type && data.type == 'answer') {
    set_pc1_remote_description(data);
  } else if (data && data.candidate) {
    pc1.addIceCandidate(data.candidate);
  }
});
socket1.on('disconnect', function() {
  console.log('Socket1 Disconnect');
});


// ******************** WRTC 1 ******************** //
let webrtc = require('..');

let RTCPeerConnection     = webrtc.RTCPeerConnection;
let RTCSessionDescription = webrtc.RTCSessionDescription;
let RTCIceCandidate       = webrtc.RTCIceCandidate;

let pc1 = new RTCPeerConnection();

pc1.onicecandidate = function(candidate) {
  if (!candidate.candidate) return;
  socket1.send(candidate);
}

function handle_error(error) {
  throw error;
}

function create_data_channels1() {
  let dc1 = pc1.createDataChannel('test');

  dc1.onopen = function() {
    console.log('pc1: data channel open');

    dc1.onmessage = function(event) {
      let data = event.data;
      console.log('dc1: received' , data);
      writeStream.write(new Buffer(data));
      //dc1.send('pong');
      //console.log('dc1: sending pong');
    }
  }
}

function create_offer1() {
  console.log('pc1: create offer');
  pc1.createOffer(set_pc1_local_description, handle_error);
}

function set_pc1_local_description(desc) {
  console.log('pc1: set local description');

  pc1.setLocalDescription(
    new RTCSessionDescription(desc),
    function() {
      socket1.send(desc);
      //set_pc2_remote_description.bind(undefined, desc)
    },
    handle_error
  );
}

function set_pc1_remote_description(desc) {
  console.log('pc1: set remote description');

  pc1.setRemoteDescription(
    new RTCSessionDescription(desc),
    wait,
    handle_error
  );
}

function wait() {
  console.log('waiting');
}

function run() {
  create_data_channels1();
  create_offer1();
}

function done() {
  console.log('cleanup');
  pc1.close();
  console.log('done');
}


// ******************** Run ******************** //
run();