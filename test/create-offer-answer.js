'use strict';

let test = require('tape');

let webrtc = require('..');
let RTCPeerConnection = webrtc.RTCPeerConnection;
let RTCSessionDescription = webrtc.RTCSessionDescription;


// ******************** Websocket ******************** //
/*
let WebSocketClient = require('websocket').client;
var client1 = new WebSocketClient();
client1.on('connect', function(connection) {
    console.log('WebSocket Client1 Connected');

    connection.on('error', function(error) {
        console.log('Connection Error: ' + error.toString());
    });
    connection.on('close', function() {
        console.log('echo-protocol Connection Closed');
    });
    connection.on('message', function(message) {
        if (message.type === 'utf8') {
            console.log('Received: ' + message.utf8Data);
        }
    });
});

client1.connect('wss://localhost:8080/');
*/


// ******************** Peer1 ******************** //
let peer1 = new RTCPeerConnection();;
let peer2 = new RTCPeerConnection();;

create_data_channels();

test('create a peer connection', function(t) {
  t.plan(1);

  peer1.createOffer(function(offer) {
    //console.log('offer: ', offer);

    peer1.setLocalDescription(new RTCSessionDescription(offer), function() {
      console.log('peer1 setLocalDescription success');
      createPeer2(offer);
    }, function(err) {
      console.log('peer1 setLocalDescription error: ', err);
    });
  }, function (err) {
    console.log('err: ', err);
  });

  //t.ok('ok1', 'ok2');
});


// ******************** Peer2 ******************** //

function createPeer2(offer) {
  console.log('createPeer2: '); //, offer);

  peer2.setRemoteDescription(new RTCSessionDescription(offer), function() {
    console.log('peer2 setRemoteDescription success');

    peer2.createAnswer(function(answer) {
      console.log('peer2 createAnswer success: '); //, answer);

      peer2.setLocalDescription(new RTCSessionDescription(answer), function() {
        console.log('peer2 setLocalDescription success: ');//, answer);

        peer1.setRemoteDescription(new RTCSessionDescription(answer), function() {
          console.log('peer1.setRemoteDescription success: ');//, answer);
        }, function(err) {
          console.log('peer1.setRemoteDescription error: ');//, err);
        });
      }, function(err) {
        console.log('peer2 setLocalDescription success: ');//, err);
      });

    }, function(err) {
      console.log('peer2 createAnswer error: ', err);
    });
  }, function(err) {
    console.log('peer2 setRemoteDescription error: ', err);
  });
}


function create_data_channels() {
  console.log('create_data_channels begin');

  var dc1 = peer1.createDataChannel('test');

  dc1.onopen = function() {
    console.log('peer1: data channel open');

    dc1.onmessage = function(event) {
      var data = event.data;
      console.log('dc1: received ' + data);
      console.log('dc1: sending ' + pong);
      dc1.send('pong');
    }
  }

  var dc2;
  peer2.ondatachannel = function(event) {
    dc2 = event.channel;
    dc2.onopen = function() {
      console.log('peer2: data channel open');

      dc2.onmessage = function(event) {
        var data = event.data;
        console.log('dc2: received ' + data);
        if(++checks == expected) {
          done();
        } else {
          console.log('dc2: sending ' + ping);
          dc2.send('ping');
        }
      }

      console.log('dc2: sending ' + ping);
      dc2.send('ping');
    };
  }

  console.log('create_data_channels end');
}


/*
test('create a peer connection', function(t) {
  t.plan(1);
  peer = new RTCPeerConnection({ iceServers: [] });
  t.ok(peer instanceof RTCPeerConnection, 'created');
});

test('createOffer function implemented', function(t) {
  t.plan(1);
  t.equal(typeof peer.createOffer, 'function', 'implemented');
});

test('can call createOffer', function(t) {

  var fail = t.ifError.bind(t);

  function pass(desc) {
    // save the local description
    localDesc = desc;

    // run the checks
    t.ok(desc, 'createOffer succeeded');
    t.equal(desc.type, 'offer', 'type === offer');
    t.ok(desc.sdp, 'got sdp');
  }

  t.plan(3);
  peer.createOffer(pass, fail);
});

test('setLocalDescription function implemented', function(t) {
  t.plan(1);
  t.equal(typeof peer.setLocalDescription, 'function', 'implemented');
});

test('can call setLocalDescription', function(t) {
  var fail = t.ifError.bind(t);

  function pass() {
    t.ok(peer.localDescription, 'local description set');
    t.ok(peer.localDescription.sdp, 'we have local sdp');
  }

  t.plan(2);
  peer.setLocalDescription(localDesc, pass, fail);
});

test('TODO: cleanup connection', function(t) {
  t.plan(1);
  peer.close();
  t.pass('connection closed');
});
*/