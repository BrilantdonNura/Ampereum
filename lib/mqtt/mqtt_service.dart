import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:mqtt_client/mqtt_client.dart';
// import 'package:mqtt_client/mqtt_browser_client.dart';

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;

import 'dart:math';

class MqttService {
  // MqttServerClient? mqttClient;


  // final mqttClient = kIsWeb
  //     ? MqttBrowserClient(
  //         'ws://192.168.56.1/ws', 'user_${Random().nextInt(10000)}')
  //     : MqttServerClient("192.168.56.1", 'user_${Random().nextInt(10000)}');

  final mqttClient =
      MqttServerClient("192.168.56.1", 'user_${Random().nextInt(10000)}');

  Function(dynamic data, dynamic topic)? onDataReceived; // Callback f

  Future<void> connect() async {
    mqttClient.port = 1883;
    mqttClient.keepAlivePeriod = 30;
    // mqttClient.secure = false;

    // Set the callbacks for the connection status
    mqttClient.onConnected = onConnected;
    mqttClient.onDisconnected = onDisconnected;

    try {
      await mqttClient.connect();
    } catch (e) {
      print('Connection failed: $e');
      mqttClient.disconnect();
    }
  }

  bool onConnected() {
    print('Connected to MQTT broker');
    // Subscribe to topics or perform other operations upon connection
    return true;
  }

  void onDisconnected() {
    print('Disconnected from MQTT broker!');
    // Handle disconnection event, e.g., try to reconnect
  }

  void subscribe(String topic) {
    if (mqttClient.connectionStatus!.state == MqttConnectionState.connected) {
      mqttClient.subscribe(topic, MqttQos.exactlyOnce);

      mqttClient.updates!
          .listen((List<MqttReceivedMessage<MqttMessage>> messages) {
        final MqttPublishMessage message =
            messages[0].payload as MqttPublishMessage;
        final String payload =
            MqttPublishPayload.bytesToStringAsString(message.payload.message);
        // print(
        //     'Received message: $payload from topic: ${message.variableHeader!.topicName}');

        if (onDataReceived != null) {
          onDataReceived!(
              payload,
              message.variableHeader!
                  .topicName); // Call the callback function with the received data
        }
        // Handle the received message as needed      // Update the received data in MqttDataProvider
      });
    }
  }
}
